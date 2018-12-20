package com.muzihok.web.service;

import java.util.List; 

import com.muzihok.web.entity.Board;
import com.muzihok.web.entity.BoardView;
import com.muzihok.web.entity.Notice;

public interface BoardService {

	// BoardView ���̺� ��ȸ

	List<BoardView> getBoardViewList(String boardcategory, int page, int sort);

	List<BoardView> getBoardViewList(String boardcategory, int page, int sort, String dcId);
	
	List<BoardView> getBoardViewList(String boardcategory, int page, int sort, String query, String field);
	
	
	
	
	
	
	
	
	
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
