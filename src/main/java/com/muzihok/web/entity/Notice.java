package com.muzihok.web.entity;

import java.util.Date;

public class Notice {

	private int id;
<<<<<<< HEAD
	private String Title;
	private String WriterId;
	private String Content;
	private Date Regdate;
	private int Hit;

	public Notice() {
		// TODO Auto-generated constructor stub
	}//게시판 어떤 객체도 만들 수 있음
=======
	private String title;
	private String writerId;
	private String content;
	private Date regdate;
	private int hit;
	private String seq;
>>>>>>> refs/remotes/origin/master
	
<<<<<<< HEAD
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
=======
	
	public Notice() {
		super();
	}
>>>>>>> refs/remotes/origin/master


	public Notice(String title, String writerId, String content, String seq) {
		super();
		this.title = title;
		this.writerId = writerId;
		this.content = content;
		this.seq = seq;
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


	public Notice(int id, String title, String writerId, String content, Date regdate, int hit, String seq) {
		super();
		this.id = id;
		this.title = title;
		this.writerId = writerId;
		this.content = content;
		this.regdate = regdate;
		this.hit = hit;
		this.seq = seq;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getWriterId() {
		return writerId;
	}


	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public Date getRegdate() {
		return regdate;
	}


	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}


	public int getHit() {
		return hit;
	}


	public void setHit(int hit) {
		this.hit = hit;
	}


	public String getSeq() {
		return seq;
	}


	public void setSeq(String seq) {
		this.seq = seq;
	}


	@Override
	public String toString() {
		return "Notice [id=" + id + ", title=" + title + ", writerId=" + writerId + ", content=" + content
				+ ", regdate=" + regdate + ", hit=" + hit + ", seq=" + seq + "]";
	}
	
	
	
}
