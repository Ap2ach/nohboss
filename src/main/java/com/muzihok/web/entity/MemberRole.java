package com.muzihok.web.entity;

public class MemberRole {
	private String memberId;
	private String roleId;
	private Boolean defaultRole;
	
	
	public MemberRole() {
	
		// TODO Auto-generated constructor stub
	}

	public MemberRole(String memberId, String roleId, Boolean defaultRole) {
	
		this.memberId = memberId;
		this.roleId = roleId;
		this.defaultRole=defaultRole;
	}

	public Boolean getDefaultRole() {
		return defaultRole;
	}

	public void setDefaultRole(Boolean defaultRole) {
		this.defaultRole = defaultRole;
	}

	public String getmemberId() {
		return memberId;
	}

	public void setmemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getroleId() {
		return roleId;
	}

	public void setroleId(String roleId) {
		this.roleId = roleId;
	}

	@Override
	public String toString() {
		return "MemberRole [memberId=" + memberId + ", roleId=" + roleId + ", defaultRole=" + defaultRole + "]";
	}
}
