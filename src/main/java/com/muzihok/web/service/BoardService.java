package com.muzihok.web.service;

import java.util.List; 

import com.muzihok.web.entity.Board;
import com.muzihok.web.entity.BoardView;

public interface BoardService {

	// BoardView 테이블 조회

	List<BoardView> getBoardViewList(String boardcategory, int page, int sort);

	List<BoardView> getBoardViewList(String boardcategory, int page, int sort, String dcId);
	
	List<BoardView> getBoardViewList(String boardcategory, int page, int sort, String query, String field);
	
	
	// ReviewView 테이블 조회	
	
	
	
	
	
	
	
	
	/*int GetTotalCount(String boardcategory);*/
	
	
/*
	List<ReviewView> getReviewViewList();

	List<ReviewView> getReviewViewList(String boardcategory, int page, int sort);

	List<ReviewView> getReviewViewList(String boardcategory, int page, int sort, String query, String field);
	
	
	
	
	*/
	
	/*
	 * List<Board> getList();
	 * 
	 * BoardView getBoardView(int id);
	 * 
	 * 
	 * int insert(Board notice);
	 * 
	 * int update(Board notice);
	 * 
	 * int delete(int id);
	 */

}
