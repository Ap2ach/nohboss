package com.muzihok.web.controller.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/board/free/detail")

public class FreeDetailController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

			
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/board/free/detail.jsp");
		dispatcher.forward(request, response);
	}

}
