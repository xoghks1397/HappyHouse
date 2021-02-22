package com.ssafy.happyhouse.dao;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.happyhouse.model.EnvironmentDto;

public interface EnvDao {

	
	List<EnvironmentDto> searchBySido(String txt) throws SQLException;
	int countsido(String typeSearchWord) throws SQLException;
	
}
