package com.muzihok.web.controller.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.muzihok.web.entity.Member;
import com.muzihok.web.service.AuthService;
import com.muzihok.web.service.jdbc.JdbcAuthService;


@WebServlet("/member/login")
public class LoginController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html charset=UTF-8");
		//System.out.println(request.getSession().getAttribute("uid"));
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/member/login.jsp");
		dispatcher.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		AuthService service = new JdbcAuthService();
		
		String uid=request.getParameter("id");
		System.out.println("uid:"+uid);
		String pwd =request.getParameter("pwd");
		Gson gson = new Gson();

		Member member = service.getMember(uid);
		System.out.println("¸â¹ö:"+member);
		
		String json = gson.toJson(member);
		 
		if(member != null) {
			    out.print(json);
		}
		    
//		  }else if (uid.equals(member.getId()) && password.equals(member.getPwd())) {
//			  out.print("true");
//		
//	}
}
}