package com.muzihok.web.controller.mypage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.muzihok.web.entity.Report;
import com.muzihok.web.service.ReportService;
import com.muzihok.web.service.jdbc.JdbcReportService;


@WebServlet("/mypage/report/list")
public class ReportListController extends HttpServlet{
 @Override
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO Auto-generated method stub
	 request.setCharacterEncoding("UTF-8");
/*	 RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/my_page/report/list.jsp");
	 dispatcher.forward(request, response);*/
	 
	 ReportService service = new JdbcReportService();
		
		String page_ = request.getParameter("p");
		int page = 1;
		
		if(page_ != null && !page_.equals(""))
			page = Integer.parseInt(page_);
			
		List<Report> list = service.getReportList(page_);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/my_page/report/list.jsp");
		request.setAttribute("list", list);
		
		dispatcher.forward(request, response);
		
		
	

 }
}
