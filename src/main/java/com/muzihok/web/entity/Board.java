package com.muzihok.web.entity;

import java.util.Date;

public class Board {

	private int id;
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
	}

	
	public Board(int id, String title, String writerId, String content, Date regdate, int hit, int recommend,
			int categoryId) {
		this.id = id;
		this.Title = title;
		this.WriterId = writerId;
		this.Content = content;
		this.Regdate = regdate;
		this.Hit = hit;
		this.Recommend = recommend;
		this.CategoryId = categoryId;
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


	public int getRecommend() {
		return Recommend;
	}


	public void setRecommend(int recommend) {
		Recommend = recommend;
	}


	public int getCategoryId() {
		return CategoryId;
	}


	public void setCategoryId(int categoryId) {
		CategoryId = categoryId;
	}


	@Override
	public String toString() {
		return "Board [id=" + id + ", Title=" + Title + ", WriterId=" + WriterId + ", Content=" + Content + ", Regdate="
				+ Regdate + ", Hit=" + Hit + ", Recommend=" + Recommend + ", CategoryId=" + CategoryId + "]";
	}

}
