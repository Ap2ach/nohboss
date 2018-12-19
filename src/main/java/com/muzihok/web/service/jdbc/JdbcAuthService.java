package com.muzihok.web.service.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.muzihok.web.entity.Member;
import com.muzihok.web.entity.MemberRole;
import com.muzihok.web.service.AuthService;


public class JdbcAuthService implements AuthService {

	@Override
	public String getDefaultRoleId(String memberId) {
		System.out.println("∏‚πˆæ∆¿Ãµ "+ memberId);
		
		String roleId=null;
		
		String sql = "select role_id from member_role where member_id=? and default_role=1";
		
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		
		Connection con = DriverManager.getConnection(url,"c##sist","dclass");
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, memberId);
		ResultSet rs =st.executeQuery();
		if(rs.next()) {
			System.out.println("?úº?ïÖ ?ÜµÍ≥ºÌñà?ã§.");
			roleId=rs.getString("ROLE_ID");
		}
		System.out.println("∑—æ∆¿Ãµ"+roleId);
		rs.close();
		st.close();
		con.close();
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return roleId;
	}

	@Override
	public Member getMember(String uid) {
		// TODO Auto-generated method stub
		Member member=null;
		String sql ="select * from member where id=?";
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url,"c##muzihok","hokclass");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uid);
			ResultSet rs =st.executeQuery();
			

			if(rs.next()) {
				
				member = new Member(
					rs.getString("id"),
					rs.getString("pwd"),
					rs.getString("name"),
					rs.getString("phone"),
					rs.getString("email"),
					rs.getDate("birth"),
					rs.getString("nickname")
					);
			}
			
			rs.close();
			st.close();
			con.close();
			
		}catch (Exception e) {
			// TODO: handle exception
		}
		

		return member;
	}

	@Override
	public List<MemberRole> getMemberRolesById(String uid) {
		// TODO Auto-generated method stub
		List<MemberRole> roles = new ArrayList<MemberRole>();
	 
		String sql = "select * from member_role where member_id=?";
		
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		
		Connection con = DriverManager.getConnection(url,"c##muzihok","hokclass");
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, uid);
		ResultSet rs =st.executeQuery();
		
		while(rs.next()) {
			
			MemberRole role= new MemberRole(
					rs.getString("MEMBER_ID"), 
					rs.getString("ROLE_ID"), 
					rs.getBoolean("DEFAULT_ROLE")
					);
			roles.add(role);
		}
		rs.close();
		st.close();
		con.close();
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return roles;
	}

	@Override
	public boolean hasRole(String uid, String roleId) {
		// TODO Auto-generated method stub
		Boolean result=false;
		//?ñ¥?ñ§ ?ïÑ?ù¥?îî?ùò ?Ç¨?ûå?ù¥ ?ä§?ä∏ÎßÅÏùò Í∂åÌïú?ùÑ Í∞?Ïß?Í≥? ?ûà?ãà?Ö£??? ÏøºÎ¶¨ ?ûë?Ñ±?ï¥?ùº .
		String sql = "select * from member_role where member_id=?"
				+ " and role_id=?";
		
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		
		Connection con = DriverManager.getConnection(url,"c##muzihok","hokclass");
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, uid);
		st.setString(2, roleId);
		ResultSet rs =st.executeQuery();
		
		if(rs.next())		//Î∞òÌôò?ï† Í∞íÏù¥ ?ûà?ñ¥?ïº ?ï®.
			result=true;
		
		rs.close();
		st.close();
		con.close();
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return result;
		
	}

	
}
