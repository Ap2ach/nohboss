package com.muzihok.web.service;

import java.util.List;

public class AuthService {

	String getDefaultRoleId(String memberId);
	
	Member getMember(String uid);
	
	List<MemberRole> getMemberRolesById(String uid);
	
	boolean hasRole(String uid, String string);
	
}
