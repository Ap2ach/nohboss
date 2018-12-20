package com.muzihok.web.entity;

import java.util.Date;

public class Board {

	private int id;
<<<<<<< HEAD
	private String Title;
	private String WriterId;
	private String Content;
	private Date Regdate;
	private int Hit;
	private int Recommend;
	private int CategoryId;
	
	
	// for insert into
	public Board() {
		// TODO Auto-generated constructor stub
	}
	
	public Board(String title, String writerId, String content, int categoryId) {
		this.Title = title;
		this.WriterId = writerId;
		this.Content = content;
		this.CategoryId = categoryId;
=======
	private String title;
	private String writerId;
	private String content;
	private Date regdate;
	private int hit;
	private int recommend;
	private String categoryId;
	private String dcId;

	public Board() {
		super();
>>>>>>> refs/remotes/origin/master
	}

	public Board(String title, String writerId, String content, String categoryId, String dcId) {
		super();
		this.title = title;
		this.writerId = writerId;
		this.content = content;
		this.categoryId = categoryId;
		this.dcId = dcId;
	}

	public Board(int id, String title, String writerId, String content, Date regdate, int hit, int recommend,
			String categoryId) {
		super();
		this.id = id;
		this.title = title;
		this.writerId = writerId;
		this.content = content;
		this.regdate = regdate;
		this.hit = hit;
		this.recommend = recommend;
		this.categoryId = categoryId;
	}

	public Board(int id, String title, String writerId, String content, Date regdate, int hit, int recommend,
			String categoryId, String dcId) {
		super();
		this.id = id;
		this.title = title;
		this.writerId = writerId;
		this.content = content;
		this.regdate = regdate;
		this.hit = hit;
		this.recommend = recommend;
		this.categoryId = categoryId;
		this.dcId = dcId;
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

	public int getRecommend() {
		return recommend;
	}

	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public String getDcId() {
		return dcId;
	}

	public void setDcId(String dcId) {
		this.dcId = dcId;
	}

	@Override
	public String toString() {
		return "Board [id=" + id + ", title=" + title + ", writerId=" + writerId + ", content=" + content + ", regdate="
				+ regdate + ", hit=" + hit + ", recommend=" + recommend + ", categoryId=" + categoryId + ", dcId="
				+ dcId + "]";
	}

}
