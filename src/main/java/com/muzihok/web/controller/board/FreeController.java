package com.muzihok.web.controller.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/board/free")

public class FreeController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println("�ȳ羲");
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/board/free/list.jsp");
		dispatcher.forward(request, response);
	}

}
