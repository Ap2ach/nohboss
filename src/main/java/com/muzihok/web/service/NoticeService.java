package com.muzihok.web.service;

import java.util.List;

import com.muzihok.web.entity.Notice;

public interface NoticeService {

	// Notice ���̺� ��ȸ
	
	
	
	List<Notice> getNoticeList(int page, int sort);
	
	List<Notice> getNoticeList(int page, int sort, String seq);
	
	List<Notice> getNoticeList(int page, int sort, String query, String field);
	
	
	
	
	
}
