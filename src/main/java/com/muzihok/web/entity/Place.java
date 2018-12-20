package com.muzihok.web.entity;

import java.util.Date;

public class Place {
	private int id;
	private String brand;
	private String name;
	private String addr;
	private Date regDate;
	//아이디 , 브랜드명 , 주소 ... ㅋ
	
	public Place(String brand,String name, String addr) {
		this.brand = brand;
		this.name=name;
		this.addr = addr;
	}

	public Place(int id, String brand, String name, String addr, Date regDate) {
		super();
		this.id = id;
		this.brand = brand;
		this.name = name;
		this.addr = addr;
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "Place [id=" + id + ", brand=" + brand + ", name=" + name + ", addr=" + addr + ", regDate=" + regDate
				+ "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	
	
	
}
