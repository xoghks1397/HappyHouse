package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dao.PresiteDao;
import com.ssafy.happyhouse.model.PresiteDto;
@Service
public class PresiteServiceImpl implements PresiteService {
	@Autowired
	private SqlSession session;

	
	@Override
	public List<PresiteDto> searchByAddress(String txt) throws SQLException {
	
		return session.getMapper(PresiteDao.class).searchByAddress(txt);
	}

}
