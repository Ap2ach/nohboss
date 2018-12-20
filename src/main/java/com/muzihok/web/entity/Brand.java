package com.muzihok.web.entity;

import java.util.Date;

public class Brand {
	private int id;
	private String name;
	private String category;
	private String fileName;
	private Date regDate;
	
	public Brand(String name, String category, String fileName) {
		this.name = name;
		this.category = category;
		this.fileName = fileName;
	}
	
	public Brand(int id, String name, String category, String fileName,Date regDate) {
		this.id=id;
		this.name = name;
		this.category = category;
		this.fileName = fileName;
		this.regDate=regDate;
	}

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "Brand [id=" + id + ", name=" + name + ", category=" + category + ", fileName=" + fileName + ", regDate="
				+ regDate + "]";
	}

	
	
}
