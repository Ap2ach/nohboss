package com.muzihok.web.controller.mypage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/mypage/wish/all-list")
public class WishAllBrandListController extends HttpServlet{
 @Override
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO Auto-generated method stub
	 request.setCharacterEncoding("UTF-8");
	 RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/my_page/wish/all-brand-list.jsp");
	 dispatcher.forward(request, response);
 }
}