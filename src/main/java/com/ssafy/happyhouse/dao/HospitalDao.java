package com.ssafy.happyhouse.dao;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.happyhouse.model.HospitalDto;

public interface HospitalDao {

	
	List<HospitalDto> searchAddress(String txt) throws SQLException;
	
	
}
