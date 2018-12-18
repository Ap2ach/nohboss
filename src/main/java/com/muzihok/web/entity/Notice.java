package com.muzihok.web.entity;

import java.util.Date;

public class Notice {

	private int id;
	private String Title;
	private String WriterId;
	private String Content;
	private Date Regdate;
	private int Hit;
	
	// for insert into
	public Notice(String title, String writerId, String content) {
		this.Title = title;
		this.WriterId = writerId;
		this.Content = content;
	}

	// for select
	public Notice(int id, String title, String writerId, String content, Date regdate, int hit) {
		this.id = id;
		this.Title = title;
		this.WriterId = writerId;
		this.Content = content;
		this.Regdate = regdate;
		this.Hit = hit;
	}

	@Override
	public String toString() {
		return "Notice [id=" + id + ", Title=" + Title + ", WriterId=" + WriterId + ", Content=" + Content
				+ ", Regdate=" + Regdate + ", Hit=" + Hit + "]";
	}
	
	
}
