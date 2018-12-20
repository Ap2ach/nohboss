package com.muzihok.web.controller.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/joinChk")
public class DupleCheckController extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		AuthService service = new jdbcAuthService();
		String uid = request.getParameter("id");
		Member member = service.getMember(uid);
		System.out.println(uid);
		
		if(member==null)
			out.print("false");
		else
			out.print("true");
		
		
	}
}
