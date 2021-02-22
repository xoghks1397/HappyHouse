package com.ssafy.happyhouse.dao;

import java.sql.SQLException;
import java.util.Map;

public interface LoginDao {
	String login(Map<String,String> m) throws SQLException;
	
}
