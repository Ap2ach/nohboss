package com.muzihok.web.entity;

public class BoardCategory {

	private int id;
	private String BoardCatName;
	
	public BoardCategory(String boardCatName) {
		BoardCatName = boardCatName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBoardCatName() {
		return BoardCatName;
	}

	public void setBoardCatName(String boardCatName) {
		BoardCatName = boardCatName;
	}

	@Override
	public String toString() {
		return "BoardCategory [id=" + id + ", BoardCatName=" + BoardCatName + "]";
	}
	
	
}
