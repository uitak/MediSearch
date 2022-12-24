package com.multi.mvc.board.controller;

import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.multi.mvc.board.model.service.BoardService;
import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.board.model.vo.Reply;
import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/board") // 요청 url의 상위 url을 모두 처리할 때 사용
@Controller
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	@Autowired
	private ResourceLoader resourceLoader; // 파일 다운로드 기능시 활용하는 loader

//	@GetMapping("/board/list") // class 상단의 @RequestMapping로 인하여 /board 생략
	@GetMapping("/list")
	public String list(Model model, @RequestParam Map<String, String> param) {
		
		log.info("list 요청 param : " + param);
		int page = 1;
		Map<String, String> searchMap = new HashMap<String, String>();
		try {
			String searchValue = param.get("searchValue");
			if(searchValue != null && searchValue.length() > 0) {
				String searchType = param.get("searchType");
				searchMap.put(searchType, searchValue);
			}
			page = Integer.parseInt(param.get("page"));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		int boardCount = service.getBoardCount(searchMap);
		PageInfo pageInfo = new PageInfo(page, 10, boardCount, 10);
		List<Board> list = service.getBoardList(pageInfo, searchMap);
		
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		
		return "/board/list";
	}
	
//	@RequestMapping("/board/view")
	@RequestMapping("/view")
	public String view(Model model, @RequestParam("no") int no) {
		Board board = service.findByNo(no);
		
		if(board == null) {
			return "redirect:error";
		}
		model.addAttribute("board", board);
		model.addAttribute("replyList", board.getReplies());
		
		return "/board/view";
	}
	
	@GetMapping("/error")
	public String error() {
		return "/common/error.jsp";
	}

	@GetMapping("/write")
	public String writeView() {
		return "/board/write";
	}
	
	@PostMapping("/write")
	public String writeBoard(Model model, HttpSession session,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute Board board,
			@RequestParam("upfile") MultipartFile upfile
	) {
		log.info("게시글 작성 요청");
		
		// 보안상의 코드라 프로젝트때는 없어도 된다. 잘못된 접근 체킹하는 예시
		if(loginMember.getId().equals(board.getWriterId()) == false) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
		
		board.setWriterNo(loginMember.getNo());
		
		// 파일 저장 로직
		if(upfile != null && upfile.isEmpty() == false) {
			String rootPath = session.getServletContext().getRealPath("resources");
			String savePath = rootPath +"/upload/board";
			String renameFileName = service.saveFile(upfile, savePath); // 실제 파일 저장하는 로직
			
			if(renameFileName != null) {
				board.setOriginalFileName(upfile.getOriginalFilename());
				board.setRenamedFileName(renameFileName);
			}
		}
		
		log.debug("board : " + board);
		int result = service.saveBoard(board);

		if(result > 0) {
			model.addAttribute("msg", "게시글이 등록되었습니다.");
			model.addAttribute("location", "/board/list");
		}else {
			model.addAttribute("msg", "게시글 작성에 실패하였습니다.");
			model.addAttribute("location", "/board/list");
		}
		
		return "common/msg";
	}
	
	
	@RequestMapping("/reply")
	public String writeReply(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute Reply reply
	) {
		reply.setWriterNo(loginMember.getNo());
	
		log.info("Reply : " + reply);
		
		int result = service.saveReply(reply);
		
		if(result > 0) {
			model.addAttribute("msg", "리플이 등록되었습니다.");
		} else {
			model.addAttribute("msg", "리플 등록에 실패하였습니다.");
		}
		model.addAttribute("location", "/board/view?no=" + reply.getBoardNo());
		
		return "/common/msg";
	}
	
	@RequestMapping("/delete")
	public String deleteBoard(Model model, HttpSession session,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			int boardNo
			) {
		log.info("게시글 삭제 요청! boardNo : " + boardNo);
		
		String rootPath = session.getServletContext().getRealPath("resources");
		String savePath = rootPath +"/upload/board";
		
		int result = service.deleteBoard(boardNo, savePath);
		
		if(result > 0) {
			model.addAttribute("msg", "게시글 삭제가 정상적으로 완료되었습니다.");
		} else {
			model.addAttribute("msg", "게시글 삭제에 실패하셨습니다.");
		}
		model.addAttribute("location", "/board/list");
		
		return "/common/msg";
	}
	
	@RequestMapping("/replyDel")
	public String deleteReply(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			int replyNo, int boardNo
			){
		log.info("리플 삭제 요청");
		
		int result = service.deleteReply(replyNo);
		
		
		if(result > 0) {
			model.addAttribute("msg", "리플 삭제가 정상적으로 완료되었습니다.");
		}else {
			model.addAttribute("msg", "리플 삭제에 실패하였습니다.");
		}
		model.addAttribute("location", "/board/view?no=" + boardNo);
		return "/common/msg";
	}
	
	@GetMapping("/update")
	public String updateView(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@RequestParam("no") int no
	) {
		Board board = service.findByNo(no);
		model.addAttribute("board", board);
		return "/board/update";
	}
	
//	@GetMapping("/update")
//	public String updateView(Model model,
//			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
//			@RequestParam("no") int boardNo
//			) {
//		Board board = service.findByNo(boardNo);
//		
//		if(loginMember.getNo() == board.getWriterNo()) {
//			model.addAttribute("board", board);
//			return "board/update";
//		}else {
//			model.addAttribute("msg", "잘못된 접근입니다.");
//			model.addAttribute("location", "/board/list");
//			return "common/msg";
//		}
//	}
	
	@PostMapping("/update")
	public String updateBoard(Model model, HttpSession session,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute Board board,
			@RequestParam("reloadFile") MultipartFile reloadFile
	) {
		log.info("게시글 수정 요청");
		
		// 보안상의 코드라 프로젝트때는 없어도 된다. 잘못된 접근 체킹하는 예시
		if(loginMember.getId().equals(board.getWriterId()) == false) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
		
		board.setWriterNo(loginMember.getNo());
		
		// 파일 저장 로직
		if(reloadFile != null && reloadFile.isEmpty() == false) {
			String rootPath = session.getServletContext().getRealPath("resources");
			String savePath = rootPath +"/upload/board";
			
			// 기존 파일이 있는 경우 삭제
			if(board.getRenamedFileName() != null) {
				service.deleteFile(savePath + "/" + board.getRenamedFileName());
			}
			
			String renameFileName = service.saveFile(reloadFile, savePath); // 실제 파일 저장하는 로직
			
			if(renameFileName != null) {
				board.setOriginalFileName(reloadFile.getOriginalFilename());
				board.setRenamedFileName(renameFileName);
			}
		}
		
		log.debug("board : " + board);
		int result = service.saveBoard(board);

		if(result > 0) {
			model.addAttribute("msg", "게시글이 수정되었습니다.");
			model.addAttribute("location", "/board/list");
		}else {
			model.addAttribute("msg", "게시글 수정에 실패하였습니다.");
			model.addAttribute("location", "/board/list");
		}
		
		return "common/msg";
	}
	
	@RequestMapping("/fileDown")
	public ResponseEntity<Resource> fileDown(
			@RequestParam("oriname") String oriname,
			@RequestParam("rename") String rename,
			@RequestHeader(name= "user-agent") String userAgent){
		try {
			Resource resource = resourceLoader.getResource("resources/upload/board/" + rename);
			String downName = null;
			
			// 인터넷 익스플로러 인 경우
			boolean isMSIE = userAgent.indexOf("MSIE") != -1 || userAgent.indexOf("Trident") != -1;

			if (isMSIE) { // 익스플로러 처리하는 방법
				downName = URLEncoder.encode(oriname, "UTF-8").replaceAll("\\+", "%20");
			} else {    		
				downName = new String(oriname.getBytes("UTF-8"), "ISO-8859-1"); // 크롬
			}
			
			return ResponseEntity.ok()
					.header(HttpHeaders.CONTENT_DISPOSITION, "attachment;filename=\"" + downName + "\"")
					.header(HttpHeaders.CONTENT_LENGTH, String.valueOf(resource.contentLength()))
					.header(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_OCTET_STREAM.toString())
					.body(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build(); // 실패했을 경우
	}

	
}
