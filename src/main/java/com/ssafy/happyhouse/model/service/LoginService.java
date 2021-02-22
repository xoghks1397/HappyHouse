package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;

public interface LoginService {
	String login(String id, String pass) throws SQLException;
}
