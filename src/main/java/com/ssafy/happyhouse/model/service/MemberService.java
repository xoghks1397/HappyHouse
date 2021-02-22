package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.happyhouse.model.MemberDto;

public interface MemberService {

	void add(MemberDto mem) throws SQLException;
	List<MemberDto> search() throws Exception;
	MemberDto searchById(String name) throws Exception;
	MemberDto searchPass(String id, String email) throws Exception;
	void update(MemberDto mem) throws Exception;
	void delete(String name) throws Exception;
	List<MemberDto> searchMember() throws Exception;
}
