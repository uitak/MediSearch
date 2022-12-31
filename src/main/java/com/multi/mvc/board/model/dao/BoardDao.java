package com.multi.mvc.board.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.board.model.vo.Reply;
// DAO 만들사람은 참고해서 쓸 것. 
@Repository
public class BoardDao {
	
	public List<Board> selectBoardList(SqlSession session, RowBounds rowBounds, Map<String, String> map) {
		return session.selectList("com.multi.mvc.board.model.mapper.BoardMapper.selectBoardList", map, rowBounds);
	}

	
	public int selectBoardCount(SqlSession session, Map<String, String> map) {
		return session.selectOne("com.multi.mvc.board.model.mapper.BoardMapper.selectBoardCount", map);
	}

	
	public Board selectBoardByNo(SqlSession session, int boardNo) {
		return session.selectOne("com.multi.mvc.board.model.mapper.BoardMapper.selectBoardByNo", boardNo);
	}

	
	public int insertBoard(SqlSession session, Board board) {
		return session.insert("com.multi.mvc.board.model.mapper.BoardMapper.insertBoard", board);
	}

	
	public int insertReply(SqlSession session, Reply reply) {
		return session.insert("com.multi.mvc.board.model.mapper.BoardMapper.insertReply", reply);
	}

	
	public int updateBoard(SqlSession session, Board board) {
		return session.insert("com.multi.mvc.board.model.mapper.BoardMapper.updateBoard", board);
	}

	
	public int updateReadCount(SqlSession session, Board board) {
		return session.insert("com.multi.mvc.board.model.mapper.BoardMapper.updateReadCount", board);
	}

	
	public int deleteBoard(SqlSession session, int boardNo) {
		return session.insert("com.multi.mvc.board.model.mapper.BoardMapper.deleteBoard", boardNo);
	}

	
	public int deleteReply(SqlSession session, int no) {
		return session.insert("com.multi.mvc.board.model.mapper.BoardMapper.deleteReply", no);
	}

}
