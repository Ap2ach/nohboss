package com.muzihok.web.controller.hokdc;

import java.io.IOException;
import java.io.PrintWriter;
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

@WebServlet("/hokdc/list")
public class DcListController extends HttpServlet{
 @Override
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO Auto-generated method stub
	 request.setCharacterEncoding("UTF-8");
	 response.setContentType("text/html; charset=UTF-8");
	 response.setCharacterEncoding("UTF-8");
	 PrintWriter out =response.getWriter();
	 
	 
	 ReportService service = new JdbcReportService();
	 System.out.println("getReportList() 메소드");
	List<Report> reportList =service.getReportList();
	for (Report report : reportList) {
		System.out.println(report);
	}
	 
	/*System.out.println("getReport(10) 메소드");
	System.out.println(service.getReport(10));
		
		
	System.out.println("삽입");
	Report report = new Report(
			"MUZI", 
			"신고", 
			"혹무지를신고합니다", 
			"신협이 싸대기 쳐맞을래?"
			);
	int aff=service.insertReport(report, "LeeShin.jpg","LeeShinH.jpg");
	System.out.println(aff);*/
		
	
	
	
	 request.setCharacterEncoding("UTF-8");
	RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/hokdc/list.jsp");
	dispatcher.forward(request, response);
 }
}
