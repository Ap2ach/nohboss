package com.muzihok.web.entity;

import java.util.Date;

public class Notice {

	private int id;
	private String title;
	private String writerId;
	private String content;
	private Date regdate;
	private int hit;
	private String seq;
	
	
	public Notice() {
		super();
	}


	public Notice(String title, String writerId, String content, String seq) {
		super();
		this.title = title;
		this.writerId = writerId;
		this.content = content;
		this.seq = seq;
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
