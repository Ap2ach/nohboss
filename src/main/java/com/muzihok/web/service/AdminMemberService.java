package com.muzihok.web.service;

import java.util.Date;
import java.util.List;

import com.muzihok.web.entity.Member;

public interface AdminMemberService {
	List<Member> getMemberList();//회원리스트를 만드는 기능-->admin의 회원목록
	List<Member> getMemberList(int page);
	List<Member> getMemberList(String name);
	Member getMember(String id);
	Member plusWarn(String id);
	Member minusWarn(String id);
	Member getMember();
}
