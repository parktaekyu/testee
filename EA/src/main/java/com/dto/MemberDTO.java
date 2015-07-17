package com.dto;


public class MemberDTO {
	
	private int num;
	private String id;
	private String pass;
	private String name;
	private String addr;
	private String birth;
	private String tel;
	private String email;
	
	
	public MemberDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	@Override
	public String toString() {
		return "MemberDTO [num=" + num + ", id=" + id + ", pass=" + pass
				+ ", name=" + name + ", addr=" + addr + ", birth=" + birth
				+ ", tel=" + tel + ", email=" + email + "]";
	}



	public String getAddr() {
		return addr;
	}



	public void setAddr(String addr) {
		this.addr = addr;
	}



	public MemberDTO(int num, String id, String pass, String name, String addr,
			String birth, String tel, String email) {
		super();
		this.num = num;
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.addr = addr;
		this.birth = birth;
		this.tel = tel;
		this.email = email;
	}



	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}