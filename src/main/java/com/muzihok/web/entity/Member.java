package com.muzihok.web.entity;

import java.util.Date;

public class Member {
	private String id;
	private String pwd;
	private String name;
	private String phone;
	private String email;
	private Date Regdate;
	private String address;
	private String birth;
	private int warn;
	private String nickname;

	public Member() {
		// TODO Auto-generated constructor stub
	}
	public Member(String id) {
		// TODO Auto-generated constructor stub
		this.id = id;
	}
	public Member(String id, String name, Date regdate) {
		super();
		this.id = id;
		this.name = name;
		Regdate = regdate;
	}

	public Member(String id, String pwd, String name, String email, String birth, String phone, String nickname) {

		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.birth = birth;
		this.phone = phone;
		this.nickname = nickname;
	}//회원목록 안에 들어가는 객체를 만들자

	public Member(String id, String pwd, String name, String phone, String email, Date regdate, String address,
			String birth, int warn, String nickname) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.phone = phone;
		this.email = email;
		Regdate = regdate;
		this.address = address;
		this.birth = birth;
		this.warn = warn;
		this.nickname = nickname;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getRegdate() {
		return Regdate;
	}

	public void setRegdate(Date regdate) {
		Regdate = regdate;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public int getWarn() {
		return warn;
	}

	public void setWarn(int warn) {
		this.warn = warn;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

}
