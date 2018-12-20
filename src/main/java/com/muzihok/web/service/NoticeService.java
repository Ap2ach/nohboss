package com.muzihok.web.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.muzihok.web.entity.Notice;

public interface NoticeService {
	List<Notice> getNotice();
	List<Notice> getNotice(int page);
}
