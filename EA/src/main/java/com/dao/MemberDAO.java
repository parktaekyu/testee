package com.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.dto.*;


//@Repository
@Component
public class MemberDAO implements Member {
	

	SqlSession template;
	

	public void setTemplate(SqlSession template) {
		this.template = template;
	}

	@Override
	public int insert(MemberDTO dto){
		System.out.println(dto.toString() + "in DAO");
		return template.insert("insert", dto);
	}




	@Override
	public int check(String id) {
		return template.selectOne("mem.idcheck", id);
		
	}

	@Override
	public int login(MemberDTO dto) {
		int n;
		try {
			n = template.selectOne("session", dto);
		} catch (Exception e) {
			n = 0;
		}
		return n;
		
	}
	
}
