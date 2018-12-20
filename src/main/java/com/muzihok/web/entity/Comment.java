package com.muzihok.web.entity;

public class Comment {
	
	private int id;
	private String content;
	private String regdate;
	private int boardId;
	private int recommend;
	private String writerId;
	
	
	public Comment(String content, int boardId, String writerId) {
	
		this.content = content;
		this.boardId = boardId;
		this.writerId = writerId;
	}


	public Comment(int id, String content, String regdate, int boardId, int recommend, String writerId) {

		this.id = id;
		this.content = content;
		this.regdate = regdate;
		this.boardId = boardId;
		this.recommend = recommend;
		this.writerId = writerId;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getRegdate() {
		return regdate;
	}


	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}


	public int getBoardId() {
		return boardId;
	}


	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}


	public int getRecommend() {
		return recommend;
	}


	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}


	public String getWriterId() {
		return writerId;
	}


	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}


	@Override
	public String toString() {
		return "comment [id=" + id + ", content=" + content + ", regdate=" + regdate + ", boardId=" + boardId
				+ ", recommend=" + recommend + ", writerId=" + writerId + "]";
	}


	
	
}
