package com.muzihok.web.service;

import java.util.List;

import com.muzihok.web.entity.Report;

public interface ReportService {

	List<Report> getList();

	List<Report> getList(int page);

	List<Report> getList(int page, String query);

	List<Report> getList(int page, String query, int date);

	Report getNotice(int id);

	int insert(Report notice);

	int update(Report notice);

	int delete(int id);

}
