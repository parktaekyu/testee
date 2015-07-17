package com.service;

import com.dto.MemberDTO;

public interface MemberService {

	public abstract int insert(MemberDTO dto);

	public abstract int check(String id);

	public abstract int login(MemberDTO dto);

}