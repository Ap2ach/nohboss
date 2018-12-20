package com.muzihok.web.service;

import java.util.List;

import com.muzihok.web.entity.Report;
import com.muzihok.web.entity.ReportAnswer;

public interface ReportService {

	List<Report> getReportList();
	
	List<Report> getReportList(String uid);						//내가 쓴 문의 목록  ///  모든 라이터 아이디로 검색 가능 해야 함 

	List<Report> getReportList(String uid,int page);

	List<Report> getReportList(String uid,int page, String query);

	
	
	List<Report> getReportList(String uid,int page, String query, String category);

	Report getReport(int id);				//리포트 리테일을 위해서 

				
	int insertReport(Report report, String ... files); //리포트 입력을 위해서 
	int deleteReport(int id);

	
	
	ReportAnswer getReportAns(int id);				//리포트 리테일을 위해서 
	int insertReportAns(ReportAnswer answer, String ... files); //리포트 입력을 위해서
	int updateReportAns(ReportAnswer answer, String ... files);
	int deleteReportAns(int id);

	
}
