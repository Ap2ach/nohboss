package com.muzihok.web.controller.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.muzihok.web.entity.Member;
import com.muzihok.web.entity.Notice;
import com.muzihok.web.service.AdminMemberService;
import com.muzihok.web.service.NoticeService;
import com.muzihok.web.service.jdbc.JdbcAdminMemberService;
import com.muzihok.web.service.jdbc.JdbcNoticeService;

@WebServlet("/admin")
public class AdminController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String ajaxId_ = request.getParameter("id");
		String ajaxId = "chlwl";
		if(ajaxId_ != null && !ajaxId_.equals(""))
			ajaxId = ajaxId_;
		
		String page_ = request.getParameter("p");
		int page = 1;
		if(page_ != null && !page_.equals(""))
			page = Integer.parseInt(page_);

		
		NoticeService noticeService = new JdbcNoticeService();
		List<Notice> noticeList = noticeService.getNotice(page);

		AdminMemberService adminNoticeService = new JdbcAdminMemberService();
		List<Member> memberList1 = adminNoticeService.getMemberList();
		Member member1 = adminNoticeService.getMember(ajaxId);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/admin/admin.jsp");
		request.setAttribute("noticeList", noticeList);
		request.setAttribute("memberList1", memberList1);
		request.setAttribute("member1", member1);
		
		
		System.out.println(member1.getName());
		dispatcher.forward(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		String putplus = request.getParameter("wp");
		String putminus = request.getParameter("wm");
		
		AdminMemberService adminNoticeService = new JdbcAdminMemberService();
		Member plus = adminNoticeService.plusWarn(putplus);
		Member minus = adminNoticeService.minusWarn(putminus);

		Gson gson = new Gson();
		String json = "";
		if(plus!=null&&!plus.equals("")) {
		json = gson.toJson(plus);
		}else if(minus!=null&&!minus.equals("")){
		json = gson.toJson(minus);
		}
		System.out.println(json);
		out.write(json);
		
		
	}
	
}
