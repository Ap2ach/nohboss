package com.muzihok.web.controller.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.muzihok.web.entity.BoardView;
import com.muzihok.web.service.BoardService;
import com.muzihok.web.service.jdbc.JdbcBoardService;


@WebServlet("/board/tag")
public class TagController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		BoardService service = new JdbcBoardService();

		String boardCategory = "자유게시판";
		
		String page_ = request.getParameter("p");
		int page = 1;
		if (page_ != null && !page_.equals("")) {
			page = Integer.parseInt(page_);
		}
		
		String sort_ = request.getParameter("s");
		int sort = 1;
		if (sort_ != null && !sort_.equals("")) {
			sort = Integer.parseInt(sort_);
		}
		
		// 게시글 쿼리
		List<BoardView> list = service.getBoardViewList(boardCategory, page, sort);

		String query = request.getParameter("q");
		String field = request.getParameter("f");

		if (query != null && !query.equals("")) {
			list = service.getBoardViewList(boardCategory, page, sort, query, field);
		}
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("../../WEB-INF/views/board/tag/list.jsp");
		request.setAttribute("list", list);

			
		dispatcher.forward(request, response);
	}
	
}
