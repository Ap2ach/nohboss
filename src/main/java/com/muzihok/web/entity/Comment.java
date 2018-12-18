package com.muzihok.web.entity;

public class Comment {
	
	private int id;
	private String Content;
	private String Regdate;
	private int BoardId;
	private int Recommend;
	private String WriterId;
	
	
	public Comment(String content, int boardId, String writerId) {
	
		this.Content = content;
		this.BoardId = boardId;
		this.WriterId = writerId;
	}


	public Comment(int id, String content, String regdate, int boardId, int recommend, String writerId) {

		this.id = id;
		this.Content = content;
		this.Regdate = regdate;
		this.BoardId = boardId;
		this.Recommend = recommend;
		this.WriterId = writerId;
	}


	@Override
	public String toString() {
		return "Comment [id=" + id + ", Content=" + Content + ", Regdate=" + Regdate + ", BoardId=" + BoardId
				+ ", Recommend=" + Recommend + ", WriterId=" + WriterId + "]";
	}
	
	
}
