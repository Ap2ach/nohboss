package com.muzihok.web.entity;

import java.util.Date;

public class Report {
	private int id;					//게시글 넘버 
	private String writerId;		//작성자 ID
	private Date regDate;			//문의 등록일
	private String regType;			//문의 유형 
	private String title;			//문의 제목
	private String content;			//문의 내용
	
	public Report() {
		super();
		// TODO Auto-generated constructor stub
	}


	//질문 작성시... 
	public Report(String writerId,String regType, String title, String content) {
		this.writerId = writerId;
		this.regType=regType;
		this.title = title;
		this.content = content;
	}
	//질문 조회시 . 
	// 메소드 추가는 그때그때 생각해보자 
	public Report(int id, String writerId, Date regDate, String regType, String title, String content) {
		this.id = id;
		this.writerId = writerId;
		this.regDate = regDate;
		this.regType=regType;
		this.title = title;
		this.content = content;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getWriterId() {
		return writerId;
	}


	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}


	public Date getRegDate() {
		return regDate;
	}


	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}

	

	public String getRegType() {
		return regType;
	}


	public void setRegType(String regType) {
		this.regType = regType;
	}


	@Override
	public String toString() {
		return "Report [id=" + id + ", writerId=" + writerId + ", regDate=" + regDate + ", regType=" + regType
				+ ", title=" + title + ", content=" + content + "]";
	}

	
}
