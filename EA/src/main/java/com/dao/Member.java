package com.dao;

import com.dto.MemberDTO;

public interface Member {

	public abstract int insert(MemberDTO dto);

	public abstract int check(String id);

	public abstract int login(MemberDTO dto);

}