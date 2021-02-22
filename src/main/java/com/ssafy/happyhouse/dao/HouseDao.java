package com.ssafy.happyhouse.dao;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.happyhouse.model.HouseDealDto;
import com.ssafy.happyhouse.model.HouseDto;

public interface HouseDao {
	List<HouseDto> search(List<HouseDealDto> deals) throws SQLException;
}
