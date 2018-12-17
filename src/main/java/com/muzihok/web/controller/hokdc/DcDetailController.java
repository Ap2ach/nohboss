package com.muzihok.web.controller.hokdc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hokdc/detail")
public class DcDetailController extends HttpServlet{
 @Override
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO Auto-generated method stub
	 request.setCharacterEncoding("UTF-8");
	 RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/hokdc/detail.jsp");
	 dispatcher.forward(request, response);
 }
}
