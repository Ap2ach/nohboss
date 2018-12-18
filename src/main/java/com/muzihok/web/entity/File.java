package com.muzihok.web.entity;

public class File {

	private int id;
	private String name;
	private int BoardId;
	
	public File(String name, int boardId) {
		this.name = name;
		this.BoardId = boardId;
	}

	public File(int id, String name, int boardId) {
		this.id = id;
		this.name = name;
		this.BoardId = boardId;
	}

	@Override
	public String toString() {
		return "File [id=" + id + ", name=" + name + ", BoardId=" + BoardId + "]";
	}
	
	
}
