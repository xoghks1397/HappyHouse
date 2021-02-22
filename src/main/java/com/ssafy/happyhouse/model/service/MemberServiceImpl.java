package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dao.MemberDao;
import com.ssafy.happyhouse.model.MemberDto;
@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private SqlSession session;

	@Override
	public void add(MemberDto mem) throws SQLException {
		session.getMapper(MemberDao.class).add(mem);
	}

	@Override
	public List<MemberDto> search() throws Exception {
		return session.getMapper(MemberDao.class).search();
	}

	@Override
	public MemberDto searchById(String name) throws Exception {
		return session.getMapper(MemberDao.class).searchById(name);
	}

	@Override
	public MemberDto searchPass(String id, String email) throws Exception {
		return session.getMapper(MemberDao.class).searchPass(id, email);
	}

	@Override
	public void update(MemberDto mem) throws Exception {
		session.getMapper(MemberDao.class).update(mem);
		
	}

	@Override
	public void delete(String name) throws Exception {
		session.getMapper(MemberDao.class).delete(name);
	}

	@Override
	public List<MemberDto> searchMember() throws Exception {
		return session.getMapper(MemberDao.class).searchMember();
	}

}
