package com.muzihok.web.entity;

import java.util.Date;

public class DcBoard {
	private int id;					//게시판고유 번호 . 
	private String brand;			//브랜드 이미지 따와야 한다     insert
	private String title;			//혹디시 행사 제목 		insert
	private String content;			//행사 내용 사진 첨부 가능 	insert
	private Date startDate;			// 시작 날짜 핅수 		insert 
	private Date endDate;			// 종료 날짜 NULL 가능 	insert (option)
	private Date regDate;			// 등록날짜 (자동 )
	private int hit;				//조횟수 (자동) ㄱ
	//private boolean affected;		// 아직 유효한 행사인가?? false라면 hidden 처리 이건 고려 
	
	
	//행사 종료 기간 없는 경우 (default는 99년 12월 31로 기본설정) 
	/*public DcBoard(String brand, String title, String content, Date startDate) {
		super();
		this.brand = brand;
		this.title = title;
		this.content = content;
		this.startDate = startDate;
	}*/
	//행사 종료 기간 있는 경우  insert
	public DcBoard(String brand, String title, String content, Date startDate, Date endDate) {
		super();
		this.brand = brand;
		this.title = title;
		this.content = content;
		this.startDate = startDate;
		this.endDate = endDate;
	}
	//select 문시 ... 만약 affected 버리는 변수라면 이거 쓰자 
	public DcBoard(int id, String brand, String title, String content, Date startDate, Date endDate, Date regDate,int hit) {
		super();
		this.id = id;
		this.brand = brand;
		this.title = title;
		this.content = content;
		this.startDate = startDate;
		this.endDate = endDate;
		this.regDate = regDate;
		this.hit = hit;
	}

	//select 문시 ....  affected 있는 버전 
	/*public DcBoard(int id, String brand, String title, String content, Date startDate, Date endDate, Date regDate,
			boolean affected) {
		super();
		this.id = id;
		this.brand = brand;
		this.title = title;
		this.content = content;
		this.startDate = startDate;
		this.endDate = endDate;
		this.regDate = regDate;
		this.affected = affected;
	}*/

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

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
/*
	public boolean isAffected() {
		return affected;
	}

	public void setAffected(boolean affected) {
		this.affected = affected;
	}*/

	public int getHit() {
		return id;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}
	@Override
	public String toString() {
		return "DcBoard [id=" + id + ", brand=" + brand + ", title=" + title + ", content=" + content + ", startDate="
				+ startDate + ", endDate=" + endDate + ", regDate=" + regDate + ", hit=" + hit + "]";
	}
	
	/*@Override
	public String toString() {
		return "DcBoard [id=" + id + ", brand=" + brand + ", title=" + title + ", content=" + content + ", startDate="
				+ startDate + ", endDate=" + endDate + ", regDate=" + regDate + ", affected=" + affected + "]";
	}*/
	
	
	
	
}
