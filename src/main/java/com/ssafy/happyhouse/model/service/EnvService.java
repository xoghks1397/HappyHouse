package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.happyhouse.model.EnvironmentDto;

public interface EnvService {

	List<EnvironmentDto> searchBySido(String txt) throws SQLException;

	// 게시물 총 갯수
	int countsido(String typeSearchWord) throws SQLException;
//	void countPop(String search_word) throws SQLException;
//	List<String> getPopular() throws SQLException;

}
