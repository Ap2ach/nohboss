package com.muzihok.web.entity;

import java.util.Date;

public class ReportAnswer {
	private int id;				//게시글 넘버
	private int reId;				//게시글 넘버
	private String adminId;			//답변자 ID
	private Date ansDate;			//답변 날짜
	private String ansTitle;		//답변글 제목
	private String ansContent;		//답변 내용
	
	
	public ReportAnswer() {
		
		// TODO Auto-generated constructor stub
	}


	//insdert
	public ReportAnswer(int id, int reId, String adminId, String ansTitle, String ansContent) {
		this.id=id;
		this.reId = reId;
		this.adminId = adminId;
		this.ansTitle = ansTitle;
		this.ansContent = ansContent;
	}
	//select 
	public ReportAnswer(int id, int reId, String adminId, Date ansDate, String ansTitle, String ansContent) {
		this.id = id;
		this.reId = reId;
		this.adminId = adminId;
		this.ansDate = ansDate;
		this.ansTitle = ansTitle;
		this.ansContent = ansContent;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public int getReId() {
		return reId;
	}



	public void setReId(int reId) {
		this.reId = reId;
	}



	public String getAdminId() {
		return adminId;
	}



	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}



	public Date getAnsDate() {
		return ansDate;
	}



	public void setAnsDate(Date ansDate) {
		this.ansDate = ansDate;
	}

	public String getAnsTitle() {
		return ansTitle;
	}


	public void setAnsTitle(String ansTitle) {
		this.ansTitle = ansTitle;
	}


	public String getAnsContent() {
		return ansContent;
	}


	public void setAnsContent(String ansContent) {
		this.ansContent = ansContent;
	}


	@Override
	public String toString() {
		return "ReportAnswer [id=" + id + ", reId=" + reId + ", adminId=" + adminId + ", ansDate=" + ansDate
				+ ", ansTitle=" + ansTitle + ", ansContent=" + ansContent + "]";
	}
	
	
	
}
