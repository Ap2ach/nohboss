package com.muzihok.web.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.muzihok.web.entity.Member;
import com.muzihok.web.service.AdminMemberService;
import com.muzihok.web.service.jdbc.JdbcAdminMemberService;

@WebServlet("/admin/member")
public class AdminMemberController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String page_ = request.getParameter("p");
		
		int page = 1;
		
		if(page_ != null && !page_.equals(""))
			page = Integer.parseInt(page_);
		
		
		
		String search_ = request.getParameter("name");
		
		String search = "chlwl";
		if(search_!=null && !search_.equals(""))
			search = search_;

		AdminMemberService service2 = new JdbcAdminMemberService();
		Member member = service2.getMember(search);
		
		AdminMemberService service = new JdbcAdminMemberService();
		List<Member> pmemberList = service.getMemberList(page);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/admin/member.jsp");
		request.setAttribute("pmemberList", pmemberList);
		request.setAttribute("member", member);
		dispatcher.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String search = request.getParameter("search");
		System.out.println(search);
		AdminMemberService service = new JdbcAdminMemberService();
		List<Member> memberList = service.getMemberList(search);
		
		Gson gson = new Gson(); //파일 구조를 리스트하기 위해 필요
		String json = gson.toJson(memberList);
		
		request.setCharacterEncoding("UTF-8");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/admin/member.jsp");
		request.setAttribute("memberList", memberList);
		dispatcher.forward(request, response);

		
	}
}
