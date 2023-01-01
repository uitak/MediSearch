package com.multi.mvc.board.model.service;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.multi.mvc.board.model.mapper.BoardMapper;
import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.board.model.vo.Reply;
import com.multi.mvc.board.model.vo.Review;
import com.multi.mvc.common.util.PageInfo;

@Service
public class BoardService {
	// 1. DAO 만들때 필요한 선언
//	@Autowired
//	private BoardDao dao;
//	@Autowired
//	private SqlSessionTemplate sqlSession;
	
	// 2. Mapper 사용시 선언
	@Autowired
	private BoardMapper mapper;
	
//	@Transactional : 쿼리 처리중에 예외 발생시 자동으로 roll-back 시켜주는 어노테이션(AOP)
	@Transactional(rollbackFor = Exception.class)
	public int saveBoard(Board board) {
		int result = 0;
		if(board.getBoardNo() == 0) {
			result = mapper.insertBoard(board);
		}else {
			result = mapper.updateBoard(board);
		}
		return result;
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int saveReply(Reply reply) {
		return mapper.insertReply(reply);
	}
	
	
	public String saveFile(MultipartFile upFile, String savePath) {
		File folder = new File(savePath);
		
		// 폴더 없으면 만드는 코드
		if(folder.exists() == false) {
			folder.mkdir();
		}
		System.out.println("savePath : " + savePath);
		
		// 파일이름을 랜덤하게 바꾸는 코드, test.txt -> 20221213_1728291212.txt
		String originalFileName = upFile.getOriginalFilename();
		String reNameFileName = 
					LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd_HHmmssSSS"));
		reNameFileName += originalFileName.substring(originalFileName.lastIndexOf("."));
		String reNamePath = savePath + "/" + reNameFileName;
		
		try {
			// 실제 파일이 저장되는 코드
			upFile.transferTo(new File(reNamePath));
		} catch (Exception e) {
			return null;
		}
		return reNameFileName;
	}
	
	// 자유게시판
	public int getBoardCount(Map<String, String> param) {
		return mapper.selectBoardCount(param);
	}
	
	// Mysql 페이지 기반 코드
	public List<Board> getBoardList(PageInfo pageInfo, Map<String, String> param){
		param.put("limit", "" + pageInfo.getListLimit());
		param.put("offset", "" + (pageInfo.getStartList() - 1));
		return mapper.selectBoardList1(param);
	}
	
	// 질병Q&A
	public int getQnACount(Map<String, String> param) {
		return mapper.selectQnACount(param);
	}
	
	public List<Board> getQnAList(PageInfo pageInfo, Map<String, String> param){
		param.put("limit", "" + pageInfo.getListLimit());
		param.put("offset", "" + (pageInfo.getStartList() - 1));
		return mapper.selectQnAList(param);
	}
	
	// 공지사항
	public int getNoticeCount(Map<String, String> param) {
		return mapper.selectNoticeCount(param);
	}
	
	public List<Board> getNoticeList(PageInfo pageInfo, Map<String, String> param){
		param.put("limit", "" + pageInfo.getListLimit());
		param.put("offset", "" + (pageInfo.getStartList() - 1));
		return mapper.selectNoticeList(param);
	}
	
	// MyBatis 페이지 기반 코드
	public List<Board> getBoardList2(PageInfo pageInfo, Map<String, String> param){
		// paging 처리를 위한 RowRounds 코드 셋팅
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		return mapper.selectBoardList2(rowBounds, param);
	}
	
	
	@Transactional(rollbackFor = Exception.class)
	public Board findByNo(int boardNo) {
		Board board = mapper.selectBoardByNo(boardNo); 
		board.setViews(board.getViews() + 1);  
		mapper.updateReadCount(board); 
		return board; 
	}
	
	public void deleteFile(String filePath) {
		File file = new File(filePath);
		if(file.exists()) {
			file.delete();
		}
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int deleteBoard(int boardNo, String rootPath) {
		Board board = mapper.selectBoardByNo(boardNo);
		deleteFile(rootPath + "\\" + board.getRenamedFileName());
		return mapper.deleteBoard(boardNo);
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int deleteReply(int no) {
		return mapper.deleteReply(no);
	}

// =========================== 리뷰 =====================================
	public List<Review> getALLReview() {
		return mapper.selectALLReview();
	}
	
	public int getAllReviewCount() {
		return mapper.selectAllReviewCount();
	}
	
	public List<Review> getHospitalReview() {
		return mapper.selectHospitalReview();
	}
	
	public List<Review> getPharmacyReview() {
		return mapper.selectPharmacyReview();
	}
	
	public List<Review> getPillReview() {
		return mapper.selectPillReview();
	}
	
	public Review hospitalByNo(int reviewNo) {
		return mapper.selectByHospital(reviewNo);
	}
	
	public Review pharmacyByNo(int reviewNo) {
		return mapper.selectByPharmacy(reviewNo);
	}
	
	public Review pillByNo(int reviewNo) {
		return mapper.selectByPill(reviewNo);
	}
	
	
	
	@Transactional(rollbackFor = Exception.class)
	public int saveHospitalReview(Review review) {
		int result = 0;
		if(review.getReviewNo() == 0) {
			result = mapper.insertHospitalReview(review);
		}else {
			result = mapper.updateHospitalReview(review);
		}
		return result;
	}
	@Transactional(rollbackFor = Exception.class)
	public int savePharmacyReview(Review review) {
		int result = 0;
		if(review.getReviewNo() == 0) {
			result = mapper.insertPharmacyReview(review);
		}else {
			result = mapper.updatePharmacyReview(review);
		}
		return result;
	}
	@Transactional(rollbackFor = Exception.class)
	public int savePillReview(Review review) {
		int result = 0;
		if(review.getReviewNo() == 0) {
			result = mapper.insertPillReview(review);
		}else {
			result = mapper.updatePillReview(review);
		}
		return result;
	}
	
	
	
}




