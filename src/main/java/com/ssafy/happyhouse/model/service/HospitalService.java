package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.happyhouse.model.HospitalDto;

public interface HospitalService {

	
	List<HospitalDto> searchAddress(String txt) throws SQLException;
	
}
