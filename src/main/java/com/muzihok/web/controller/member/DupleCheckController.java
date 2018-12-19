package com.muzihok.web.controller.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.muzihok.web.entity.Member;
import com.muzihok.web.service.AuthService;
import com.muzihok.web.service.jdbc.JdbcAuthService;

@WebServlet("/member/joinChk")
public class DupleCheckController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/member/idCheckForm.jsp");
		dispatcher.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html charset=UTF-8");
		//String userId = request.getParameter("id");
		//System.out.println(userId);
		PrintWriter out = response.getWriter();
		
		AuthService service = new JdbcAuthService();
		//int error= service.chkId(userId);
		
		
		String uid = request.getParameter("id");
		Member member = service.getMember(uid);
		System.out.println(uid);
		System.out.println(member);
		if(member==null)
			out.print("false");
		else
			out.print("true");
	
//		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/member/idCheckForm.jsp");
//		dispatcher.forward(request, response);
////		response.sendRedirect("/member/joinChk");
		
	
	}
}
