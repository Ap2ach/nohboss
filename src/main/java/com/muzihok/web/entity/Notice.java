package com.muzihok.web.entity;

import java.util.Date;

public class Notice {

	private int id;
	private String Title;
	private String WriterId;
	private String Content;
	private Date Regdate;
	private int Hit;

	public Notice() {
		// TODO Auto-generated constructor stub
	}//게시판 어떤 객체도 만들 수 있음
	
	public Notice(String writerId, String title, Date regdate) {
		this.WriterId = writerId;
		this.Title = title;
		this.Regdate = regdate;
		
	}//게시판 작성자, 제목, 날짜 
	// for insert into
	public Notice(String title, String writerId, String content) {
		this.Title = title;
		this.WriterId = writerId;
		this.Content = content;
	}//???????????

	// for select
	public Notice(int id, String title, String writerId, String content, Date regdate, int hit) {
		this.id = id;
		this.Title = title;
		this.WriterId = writerId;
		this.Content = content;
		this.Regdate = regdate;
		this.Hit = hit;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return Title;
	}

	public void setTitle(String title) {
		Title = title;
	}

	public String getWriterId() {
		return WriterId;
	}

	public void setWriterId(String writerId) {
		WriterId = writerId;
	}

	public String getContent() {
		return Content;
	}

	public void setContent(String content) {
		Content = content;
	}

	public Date getRegdate() {
		return Regdate;
	}

	public void setRegdate(Date regdate) {
		Regdate = regdate;
	}

	public int getHit() {
		return Hit;
	}

	public void setHit(int hit) {
		Hit = hit;
	}

	@Override
	public String toString() {
		return "Notice [id=" + id + ", Title=" + Title + ", WriterId=" + WriterId + ", Content=" + Content
				+ ", Regdate=" + Regdate + ", Hit=" + Hit + "]";
	}
	
	
}
