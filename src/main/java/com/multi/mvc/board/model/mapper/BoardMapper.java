package com.multi.mvc.board.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.board.model.vo.Reply;
import com.multi.mvc.board.model.vo.Review;

@Mapper
public interface BoardMapper {
	// MySQL Page 기능 활용
	// 자유게시판
	List<Board> selectBoardList1(Map<String, String> map);
	int selectBoardCount(Map<String, String> map);
	// 질병Q&A
	List<Board> selectQnAList(Map<String, String> map);
	int selectQnACount(Map<String, String> map);
	// 공지사항
	List<Board> selectNoticeList(Map<String, String> map);
	int selectNoticeCount(Map<String, String> map);
	
	// MyBatis Page 기능 활용
	List<Board> selectBoardList2(RowBounds rowBounds, Map<String, String> map);
	
	Board selectBoardByNo(int boardNo);
	int insertBoard(Board board);
	int insertReply(Reply reply);
	int updateBoard(Board board);
	int updateReadCount(Board board);
	int deleteBoard(int boardNo);
	int deleteReply(int replyNo);
	
	// 리뷰
	List<Review> selectALLReview();
	int selectAllReviewCount();
	List<Review> selectHospitalReview();
	List<Review> selectPharmacyReview();
	List<Review> selectPillReview();
	
	// 리뷰쓰기
	int insertHospitalReview(Review review);
	int insertPharmacyReview(Review review);
	int insertPillReview(Review review);
	int updateHospitalReview(Review review);
	int updatePharmacyReview(Review review);
	int updatePillReview(Review review);
	
	// 리뷰 보기
	Review selectByHospital(int no);
	Review selectByPharmacy(int no);
	Review selectByPill(int no);
	
	
}
