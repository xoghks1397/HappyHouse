package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dao.EnvDao;
import com.ssafy.happyhouse.model.EnvironmentDto;

@Service
public class EnvServiceImpl implements EnvService {
	@Autowired
	private SqlSession session;
	
	@Override
	public List<EnvironmentDto> searchBySido(String txt) throws SQLException {
		return session.getMapper(EnvDao.class).searchBySido(txt);
	}

	@Override
	public int countsido(String typeSearchWord) throws SQLException {
		return session.getMapper(EnvDao.class).countsido(typeSearchWord);
	}

	
	
}
