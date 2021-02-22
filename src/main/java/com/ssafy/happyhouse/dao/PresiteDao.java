package com.ssafy.happyhouse.dao;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.happyhouse.model.PresiteDto;



public interface PresiteDao {
	List<PresiteDto> searchByAddress(String txt) throws SQLException;
	
}
