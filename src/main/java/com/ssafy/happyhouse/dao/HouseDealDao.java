package com.ssafy.happyhouse.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ssafy.happyhouse.model.HouseDealDetailDto;
import com.ssafy.happyhouse.model.HouseDealDto;
import com.ssafy.util.PagingVO;

public interface HouseDealDao {
	List<HouseDealDto> searchByDong(int buildingType, int transactionType, String searchWord)  throws SQLException;
	List<HouseDealDto> searchByName(int buildingType, int transactionType, String searchWord) throws SQLException;
	HouseDealDetailDto searchByInfo(int no) throws SQLException;
	int countBoardDong(HashMap<String,String> typeSearchWord) throws SQLException;
	int countBoardAptName(HashMap<String,String> typeSearchWord) throws SQLException;
	List<HouseDealDto> selectBoard(PagingVO vo) throws SQLException;
	void countPop(String search_word) throws SQLException;
	List<String> getPopular() throws SQLException;
}
