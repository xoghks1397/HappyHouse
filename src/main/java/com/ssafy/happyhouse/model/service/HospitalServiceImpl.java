package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dao.HospitalDao;
import com.ssafy.happyhouse.model.HospitalDto;
@Service
public class HospitalServiceImpl implements HospitalService {
	@Autowired
	private SqlSession session;

	@Override
	public List<HospitalDto> searchAddress(String txt) throws SQLException {

		return session.getMapper(HospitalDao.class).searchAddress(txt);
	}

}
