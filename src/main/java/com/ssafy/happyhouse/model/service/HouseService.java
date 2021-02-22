package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.happyhouse.model.HouseDealDto;
import com.ssafy.happyhouse.model.HouseDto;

public interface HouseService {
	List<HouseDto> search(List<HouseDealDto> deals) throws SQLException;
}
