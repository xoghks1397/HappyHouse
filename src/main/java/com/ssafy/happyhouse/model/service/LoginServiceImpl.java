package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dao.LoginDao;
@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private SqlSession session;

	@Override
	public String login(String id, String pass) throws SQLException {
		Map<String, String> m = new HashMap<>();
		m.put("id", id);
		m.put("pw", pass);
		String pw = session.getMapper(LoginDao.class).login(m);
		if (pass.equals(pw)) {
			return id;
		}
		return null;
	}
}
