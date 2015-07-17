package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.dao.Member;
import com.dao.MemberDAO;
import com.dto.MemberDTO;

//@Service
@Component
public class MemberServiceCommand implements MemberService {
	

	Member dao;

	public void setDao(MemberDAO dao) {
		this.dao = dao;
	}
	/* (non-Javadoc)
	 * @see com.service.Member#insert(com.dto.MemberDTO)
	 */
	@Override
	public int insert(MemberDTO dto){
		System.out.println(dto.toString()+"in Service");
		return dao.insert(dto);
	}
	/* (non-Javadoc)
	 * @see com.service.Member#check(java.lang.String)
	 */
	@Override
	public int check(String id){
		System.out.println(id+"\tid => service");
		return dao.check(id);
	}
	@Override
	public int login(MemberDTO dto) {
		return dao.login(dto);
	}
	
}
