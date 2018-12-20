package com.muzihok.web.entity;

public class Member {
	private String id;
	private String pwd;
	private String name;
	private String nicname;
	private String email;
	private String birth;
	
	public Member() {
		// TODO Auto-generated constructor stub
	}

	public Member(String id, String pwd, String name, String nicname, String email, String birth) {
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.nicname = nicname;
		this.email = email;
		this.birth = birth;
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

	public String getNicname() {
		return nicname;
	}

	public void setNicname(String nicname) {
		this.nicname = nicname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	@Override
	public String toString() {
		return "Member [id=" + id + ", pwd=" + pwd + ", name=" + name + ", nicname=" + nicname + ", email=" + email
				+ ", birth=" + birth + "]";
	}
	
	
	
}
