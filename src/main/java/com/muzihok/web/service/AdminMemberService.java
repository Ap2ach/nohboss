package com.muzihok.web.service;

import java.util.Date;
import java.util.List;

import com.muzihok.web.entity.Member;

public interface AdminMemberService {
	List<Member> getMemberList();//ȸ������Ʈ�� ����� ���-->admin�� ȸ�����
	List<Member> getMemberList(int page);
	List<Member> getMemberList(String name);
	Member getMember(String id);
	Member plusWarn(String id);
	Member minusWarn(String id);
	Member getMember();
}
