package com.muzihok.web.entity;

import java.util.Date;

public class BoardView extends Board {

	private int commentCount;

	public BoardView() {
		super();
	}

	public BoardView(int commentCount) {
		super();
		this.commentCount = commentCount;
	}

	public BoardView(int id, String title, String writerId, String content, Date regdate, int hit, int recommend,
			String categoryId, int commentCount) {
		super(id, title, writerId, content, regdate, hit, recommend, categoryId);
		this.commentCount = commentCount;
	}
	
	public BoardView(int id, String title, String writerId, String content, Date regdate, int hit, int recommend,
			String categoryId, String dcId, int commentCount) {
		super(id, title, writerId, content, regdate, hit, recommend, categoryId, dcId);
		this.commentCount = commentCount;
	}

	public int getCommentCount() {
		return commentCount;
	}

	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}

	@Override
	public String toString() {
		return "BoardView [commentCount=" + commentCount + "]";
	}

}
