package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dao.HouseDealDao;
import com.ssafy.happyhouse.model.HouseDealDetailDto;
import com.ssafy.happyhouse.model.HouseDealDto;
import com.ssafy.util.PagingVO;
@Service
public class HouseDealServiceImpl implements HouseDealService {
	@Autowired
	private SqlSession session;


	@Override
	public List<HouseDealDto> searchByDong(int buildingType, int transactionType, String searchWord) throws SQLException {
		return session.getMapper(HouseDealDao.class).searchByDong(buildingType, transactionType, searchWord);
	}

	@Override
	public List<HouseDealDto> searchByName(int buildingType, int transactionType, String searchWord) throws SQLException {
		return session.getMapper(HouseDealDao.class).searchByName(buildingType, transactionType, searchWord);
	}

	@Override
	public HouseDealDetailDto searchByInfo(int no) throws SQLException {
		return session.getMapper(HouseDealDao.class).searchByInfo(no);
	}
	// 게시물 총 갯수
	@Override
	public int countBoardDong(HashMap<String,String> m) throws SQLException {
		return session.getMapper(HouseDealDao.class).countBoardDong(m);
	}
	@Override
	public int countBoardAptName(HashMap<String,String> m) throws SQLException {
		return session.getMapper(HouseDealDao.class).countBoardAptName(m);
	}
	// 페이징 처리 게시글 조회
	@Override
	public List<HouseDealDto> selectBoard(PagingVO vo) throws SQLException{
		return session.getMapper(HouseDealDao.class).selectBoard(vo);
	}

	@Override
	public void countPop(String search_word) throws SQLException {
		session.getMapper(HouseDealDao.class).countPop(search_word);
	}

	@Override
	public List<String> getPopular() throws SQLException {
		return session.getMapper(HouseDealDao.class).getPopular();
	}
}
