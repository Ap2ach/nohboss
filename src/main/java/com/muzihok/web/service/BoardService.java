package com.muzihok.web.service;

import java.util.List;

import com.muzihok.web.entity.Board;

public interface BoardService {

	   List<BoardView> getViewList();
	   List<Board> getList();
	   List<BoardView> getViewList(int page);
	   List<BoardView> getViewList(int page, String query);
	   List<BoardView> getViewList(int page, String query, String field);
	   
	   BoardView getNoticeView(int id);
	   Board getNotice(int id);
	   int insert(Board notice);
	   int update(Board notice);
	   int delete(int id);
	
}
