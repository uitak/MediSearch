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
import com.multi.mvc.board.model.vo.Review;
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
	@GetMapping("/communityList")
	public String communityList(Model model, @RequestParam Map<String, String> param) {
		
		log.info("communityList 요청 param : " + param);
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
		List<Board> boardList = service.getBoardList(pageInfo, searchMap);
		
		// 질병Q&A
		int qnaCount = service.getQnACount(searchMap);
		pageInfo = new PageInfo(page, 10, qnaCount, 10);
		List<Board> qnaList = service.getQnAList(pageInfo, searchMap);
		
		// 공지사항
		int noticeCount = service.getNoticeCount(searchMap);
		pageInfo = new PageInfo(page, 10, noticeCount, 10);
		List<Board> noticeList = service.getNoticeList(pageInfo, searchMap);
		
		// 리뷰
		int reviewCount = service.getAllReviewCount();
		List<Review> reviewList = service.getALLReview();
		reviewList = setName(reviewList);
		List<Review> hospitalReview = service.getHospitalReview();
		List<Review> pharmacyReview = service.getPharmacyReview();
		List<Review> pillReview = service.getPillReview();
		pillReview = setName(pillReview);
		
		// 리뷰
		model.addAttribute("reviewCount", reviewCount);
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("hospitalReview", hospitalReview);
		model.addAttribute("pharmacyReview", pharmacyReview);
		model.addAttribute("pillReview", pillReview);
		
		// 자유게시판
		model.addAttribute("boardList", boardList);
		model.addAttribute("boardCount", boardCount);
		// 질병Q&A
		model.addAttribute("qnaList", qnaList);
		model.addAttribute("qnaCount", qnaCount);
		// 공지사항
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("noticeCount", noticeCount);
		model.addAttribute("param", param);
//		model.addAttribute("pageInfo", pageInfo);
		return "/board/communityList";
	}
	
//	@RequestMapping("/board/view")
	@RequestMapping("/postView")
	public String postView(Model model, @RequestParam("boardNo") int boardNo) {
		Board board = service.findByNo(boardNo);
		
		if(board == null) {
			return "redirect:error";
		}
		model.addAttribute("board", board);
		model.addAttribute("replyList", board.getReplies());
		
		return "/board/postView";
	}
	
	
	@GetMapping("/error")
	public String error() {
		return "/common/error.jsp";
	}
// 4개 더 만들기
	@GetMapping("/postBoard")
	public String postBoardPage() {
		log.info("자유 게시판 글쓰기 요청");
		return "board/postBoard";
	}
	
	@GetMapping("/postQna")
	public String qnaWrite() {
		log.info("QnA 게시판 글쓰기 요청");
		return "/board/postQna";
	}
	
	@GetMapping("/postNotice")
	public String noticeWrite() {
		log.info("공지사항 글쓰기 요청");
		return "/board/postNotice";
	}
	
	
	@PostMapping("/postBoard")
	public String writeBoard(Model model, HttpSession session,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute Board board,
			@RequestParam("upfile") MultipartFile upfile
	) {
		log.info("자유 게시글 작성 요청");
		
		// 보안상의 코드라 프로젝트때는 없어도 된다. 잘못된 접근 체킹하는 예시
//		if(loginMember.getUserId().equals(board.getWriterId()) == false) {
//			log.info("userId : " + loginMember.getUserId() + "WriterId : " +board.getWriterId());
//			model.addAttribute("msg", "잘못된 접근입니다.");
//			model.addAttribute("location", "/");
//			return "common/msg";
//		}
		
		board.setMemberNo(loginMember.getMemberNo());
		
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
			model.addAttribute("location", "/board/communityList");
		}else {
			model.addAttribute("msg", "게시글 작성에 실패하였습니다.");
			model.addAttribute("location", "/board/communityList");
		}
		return "common/msg";
		}
		
		
		
	@PostMapping("/postQna")
	public String writeQna(Model model, HttpSession session,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute Board board,
			@RequestParam("upfile") MultipartFile upfile
	) {
		log.info("qna 게시글 작성 요청");
		
		// 보안상의 코드라 프로젝트때는 없어도 된다. 잘못된 접근 체킹하는 예시
//		if(loginMember.getUserId().equals(board.getWriterId()) == false) {
//			model.addAttribute("msg", "잘못된 접근입니다.");
//			model.addAttribute("location", "/");
//			return "common/msg";
//		}
		
		board.setMemberNo(loginMember.getMemberNo());
		
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
			model.addAttribute("location", "/board/communityList");
		}else {
			model.addAttribute("msg", "게시글 작성에 실패하였습니다.");
			model.addAttribute("location", "/board/communityList");
		}
		
		return "common/msg";
	}
	
	@PostMapping("/postNotice")
	public String writeNotice(Model model, HttpSession session,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute Board board,
			@RequestParam("upfile") MultipartFile upfile
	) {
		log.info("qna 게시글 작성 요청");
		
		// 보안상의 코드라 프로젝트때는 없어도 된다. 잘못된 접근 체킹하는 예시
//		if(loginMember.getUserId().equals(board.getWriterId()) == false) {
//			model.addAttribute("msg", "잘못된 접근입니다.");
//			model.addAttribute("location", "/");
//			return "common/msg";
//		}
		
		board.setMemberNo(loginMember.getMemberNo());
		
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
			model.addAttribute("location", "/board/communityList");
		}else {
			model.addAttribute("msg", "게시글 작성에 실패하였습니다.");
			model.addAttribute("location", "/board/communityList");
		}
		
		return "common/msg";
	}
	
	
	
	
	
	
	@RequestMapping("/reply")
	public String writeReply(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute Reply reply
	) {
		reply.setMemberNo(loginMember.getMemberNo());
	
		log.info("Reply : " + reply);
		
		int result = service.saveReply(reply);
		
		if(result > 0) {
			model.addAttribute("msg", "리플이 등록되었습니다.");
		} else {
			model.addAttribute("msg", "리플 등록에 실패하였습니다.");
		}
		model.addAttribute("location", "/board/postView?boardNo=" + reply.getBoardNo());
		
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
		model.addAttribute("location", "/board/communityList");
		
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
		model.addAttribute("location", "/board/postView?boardNo=" + boardNo);
		return "/common/msg";
	}
	
	@GetMapping("/update")
	public String updateView(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@RequestParam("boardNo") int boardNo
	) {
		Board board = service.findByNo(boardNo);
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
//		if(loginMember.getUserId().equals(board.getWriterId()) == false) {
//			model.addAttribute("msg", "잘못된 접근입니다.");
//			model.addAttribute("location", "/");
//			return "common/msg";
//		}
		
		board.setBoardNo(loginMember.getMemberNo());
		
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
			model.addAttribute("location", "/board/communityList");
		}else {
			model.addAttribute("msg", "게시글 수정에 실패하였습니다.");
			model.addAttribute("location", "/board/communityList");
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
	
	@GetMapping("/help")
	public String helpCenter() {
		return "/board/helpCenter";
	}
	
	
	
	// 리뷰 글쓰기 영역
	
	@GetMapping("/postHospitalReview")
	public String reviewWriteHospital() {
		log.info("병원 리뷰 글쓰기 요청");
		return "/board/postHospitalReview";
	}
	
	@GetMapping("/postPharmacyReview")
	public String reviewWritePharmacy() {
		log.info("약국 리뷰 글쓰기 요청");
		return "/board/postPharmacyReview";
	}
	
	@GetMapping("/postPillReview")
	public String reviewWritePill() {
		log.info("의약품 리뷰 글쓰기 요청");
		return "/board/postPillReview";
	}
	
	@PostMapping("/postHospitalReview")
	public String writeReviewHospital(Model model, HttpSession session,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute Review review		
	) {
		log.info("병원 리뷰 작성 요청");
		
		review.setMemberNo(loginMember.getMemberNo());
			
		log.debug("review : " + review);
		int result = service.saveHospitalReview(review);

		if(result > 0) {
			model.addAttribute("msg", "게시글이 등록되었습니다.");
			model.addAttribute("location", "/board/communityList");
		}else {
			model.addAttribute("msg", "게시글 작성에 실패하였습니다.");
			model.addAttribute("location", "/board/communityList");
		}
		
		return "common/msg";
	}
	
	@PostMapping("/postPharmacyReview")
	public String writeReviewPharmacy(Model model, HttpSession session,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute Review review		
	) {
		log.info("약국 리뷰 작성 요청");
		
		review.setMemberNo(loginMember.getMemberNo());
			
		log.debug("review : " + review);
		int result = service.savePharmacyReview(review);

		if(result > 0) {
			model.addAttribute("msg", "게시글이 등록되었습니다.");
			model.addAttribute("location", "/board/communityList");
		}else {
			model.addAttribute("msg", "게시글 작성에 실패하였습니다.");
			model.addAttribute("location", "/board/communityList");
		}
		
		return "common/msg";
	}
	
	@PostMapping("/postPillReview")
	public String writeReviewPill(Model model, HttpSession session,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute Review review		
	) {
		log.info("알약 리뷰 작성 요청");
		
		review.setMemberNo(loginMember.getMemberNo());
			
		log.debug("review : " + review);
		int result = service.savePillReview(review);

		if(result > 0) {
			model.addAttribute("msg", "게시글이 등록되었습니다.");
			model.addAttribute("location", "/board/communityList");
		}else {
			model.addAttribute("msg", "게시글 작성에 실패하였습니다.");
			model.addAttribute("location", "/board/communityList");
		}
		
		return "common/msg";
	}
	
	
	// 리뷰 보기
	@GetMapping("/postReview")
	public String review(Model model,  @RequestParam Map<String, String> param) {
		
		log.info("리뷰 보기 요청 param : " + param);
		
		int no = Integer.parseInt(param.get("no"));
		String type = param.get("type");
		
		Review review = null;
		if(type.equals("병원")) {
			review = service.hospitalByNo(no);
		} else if(type.equals("약국")) {
			review = service.pharmacyByNo(no);
		} else {
			review = service.pillByNo(no);
			String[] nameArray = review.getName().split("\\(");
			String newName = nameArray[0];
			review.setName(newName);
		}
		
		model.addAttribute("review", review);
		model.addAttribute("param", param);
		
		return "/board/postReview";
	}
	
	private List<Review> setName(List<Review> list) {
		
		for(int i = 0; i < list.size(); i++) {
			if(list.get(i).getDivision().equals("의약품")) {
				String[] nameArray = list.get(i).getName().split("\\(");
				String newName = nameArray[0];
				list.get(i).setName(newName);
			}
		}
		
		return list;
	}

	
	
}
