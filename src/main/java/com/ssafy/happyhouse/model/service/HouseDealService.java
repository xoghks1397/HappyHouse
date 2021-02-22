package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import com.ssafy.happyhouse.model.HouseDealDetailDto;
import com.ssafy.happyhouse.model.HouseDealDto;
import com.ssafy.util.PagingVO;

public interface HouseDealService {
	List<HouseDealDto> searchByDong(int buildingType, int transactionType, String searchWord)  throws SQLException;
	List<HouseDealDto> searchByName(int buildingType, int transactionType, String searchWord) throws SQLException;
	HouseDealDetailDto searchByInfo(int no) throws SQLException;
	// 게시물 총 갯수
	int countBoardDong(HashMap<String,String> typeSearchWord) throws SQLException;
	int countBoardAptName(HashMap<String,String> typeSearchWord) throws SQLException;
	// 페이징 처리 게시글 조회
	List<HouseDealDto> selectBoard(PagingVO vo) throws SQLException;
	void countPop(String search_word) throws SQLException;
	List<String> getPopular() throws SQLException;
}
