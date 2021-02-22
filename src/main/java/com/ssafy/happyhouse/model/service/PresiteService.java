package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.happyhouse.model.PresiteDto;

public interface PresiteService {

	List<PresiteDto> searchByAddress(String txt) throws SQLException;
	
}
