package com.muzihok.web.entity;

public class File {

	private int id;
	private String name;
	private int boardId;
	
	public File(String name, int boardId) {
		this.name = name;
		this.boardId = boardId;
	}

	public File(int id, String name, int boardId) {
		this.id = id;
		this.name = name;
		this.boardId = boardId;
	}

	@Override
	public String toString() {
		return "file [id=" + id + ", name=" + name + ", boardId=" + boardId + "]";
	}
	
	
}
