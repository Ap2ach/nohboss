package com.muzihok.web.service;

import java.util.List;

import com.muzihok.web.entity.Member;
import com.muzihok.web.entity.MemberRole;

public interface AuthService {

	String getDefaultRoleId(String memberId);
	
	Member getMember(String uid);
	
	List<MemberRole> getMemberRolesById(String uid);
	
	boolean hasRole(String uid, String string);

	int chkId(String userId);
	
}
