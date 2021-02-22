package com.ssafy.happyhouse.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssafy.happyhouse.dao.BoardDao;
import com.ssafy.happyhouse.model.BoardDto;


@Service
public class BoardServiceImpl implements BoardService {
    
	@Autowired
	private SqlSession session;

    @Override
	public List<BoardDto> retrieveBoard() {
		return session.getMapper(BoardDao.class).selectBoard();
	}
    
  	@Override
	public boolean writeBoard(BoardDto board) {
		return session.getMapper(BoardDao.class).insertBoard(board) == 1;
	}

	@Override
	public BoardDto detailBoard(int no) {
		return session.getMapper(BoardDao.class).selectBoardByNo(no);
	}

	@Override
	@Transactional
	public boolean updateBoard(BoardDto board) {
		return session.getMapper(BoardDao.class).updateBoard(board) == 1;
	}

	@Override
	@Transactional
	public boolean deleteBoard(int no) {
		return session.getMapper(BoardDao.class).deleteBoard(no) == 1;
	}
}