package com.muzihok.web.entity;

import java.util.Date;

public class Report {
	private int id;					//게시글 넘버 
	private String writerId;		//작성자 ID
	private Date regDate;			//문의 등록일
	private String regType;			//문의 유형 
	private String regTitle;			//문의 제목
	private String regContent;			//문의 내용
	private boolean hasAnswer;		//답변여부 
	
	public Report() {
		super();
		// TODO Auto-generated constructor stub
	}


	//질문 작성시... 
	public Report(String writerId,String regType, String regTitle, String regContent) {
		this.writerId = writerId;
		this.regType=regType;
		this.regTitle = regTitle;
		this.regContent = regContent;
	}
	//질문 조회시 . 
	// 메소드 추가는 그때그때 생각해보자 
	public Report(int id, String writerId, Date regDate, String regType, String regTitle, String regContent, boolean hasAnswer) {
		this.id = id;
		this.writerId = writerId;
		this.regDate = regDate;
		this.regType=regType;
		this.regTitle = regTitle;
		this.regContent = regContent;
		this.hasAnswer= hasAnswer;
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
		return regTitle;
	}


	public void setTitle(String regTitle) {
		this.regTitle = regTitle;
	}


	public String getContent() {
		return regContent;
	}


	public void setContent(String regContent) {
		this.regContent = regContent;
	}

	

	public String getRegType() {
		return regType;
	}


	public void setRegType(String regType) {
		this.regType = regType;
	}

	

	public boolean isHasAnswer() {
		return hasAnswer;
	}


	public void setHasAnswer(boolean hasAnswer) {
		this.hasAnswer = hasAnswer;
	}


	@Override
	public String toString() {
		return "Report [id=" + id + ", writerId=" + writerId + ", regDate=" + regDate + ", regType=" + regType
				+ ", regTitle=" + regTitle + ", regContent=" + regContent + ", hasAnswer=" + hasAnswer + "]";
	}


	

}
