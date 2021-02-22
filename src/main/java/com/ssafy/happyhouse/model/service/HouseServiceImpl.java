package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dao.HouseDao;
import com.ssafy.happyhouse.model.HouseDealDto;
import com.ssafy.happyhouse.model.HouseDto;
@Service
public class HouseServiceImpl implements HouseService {
	
	@Autowired
	private SqlSession session;

	@Override
	public List<HouseDto> search(List<HouseDealDto> deals) throws SQLException {
		return session.getMapper(HouseDao.class).search(deals);
	}

	
}
