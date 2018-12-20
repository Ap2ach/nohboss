package com.muzihok.web.service;

import java.util.List;

import com.muzihok.web.entity.Notice;

public interface NoticeService {

	// Notice 테이블 조회
	
	
	
	List<Notice> getNoticeList(int page, int sort);
	
	List<Notice> getNoticeList(int page, int sort, String seq);
	
	List<Notice> getNoticeList(int page, int sort, String query, String field);
	
	
	
	
	
}
