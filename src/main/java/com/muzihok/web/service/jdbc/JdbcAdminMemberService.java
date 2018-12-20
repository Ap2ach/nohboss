package com.muzihok.web.service.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.muzihok.web.entity.Member;
import com.muzihok.web.service.AdminMemberService;

public class JdbcAdminMemberService implements AdminMemberService {

	@Override
	public List<Member> getMemberList() {

		List<Member> memberList1 = new ArrayList<>();

		String sql = "select * from MEMBER";
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";

		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "c##muzihok", "hokclass");
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				memberList1.add(new Member(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getDate(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getString(10)));
			}
			for (Member member2 : memberList1) {
				System.out.println(member2);
			}
			rs.close();
			ps.close();
			con.close();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return memberList1;//회원목록을 위한 리스트
	}

	public List<Member> getMemberList(String name) {
		// 검색을 위한 리스트

		List<Member> memberList2 = new ArrayList<>();

		String sql = "select * from MEMBER where name like ?";
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "c##muzihok", "hokclass");
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "%" + name + "%");

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				memberList2.add(
						new Member(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
								rs.getDate(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getString(10)));

			}

			rs.close();
			ps.close();
			con.close();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return memberList2;
	}

	@Override
	public Member getMember(String id) {

		Member member = new Member();

		String sql = "select * from member where id=?";
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "c##muzihok", "hokclass");
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();
			
			if(!rs.next()) return null;
			member = new Member(
					rs.getString("id"), 
					rs.getString("pwd"), 
					rs.getString("name"), 
					rs.getString("phone"), 
					rs.getString("email"), 
					rs.getDate("regdate"), 
					rs.getString("address"), 
					rs.getString("birth"), 
					rs.getInt("warn"), 
					rs.getString("nickname"));

			rs.close();
			ps.close();
			con.close();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return member;//기본 메인
	}

	@Override
	public List<Member> getMemberList(int page) {

		List<Member> pmemberList = new ArrayList<>();


		String sql = "select * from (select rownum num, s.* from (select * from member order by regdate desc)s)d where num between ? and ?";
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
		try {

			int start = 1+(page-1)*5; // 등차수열 일반항
			int end = page*5;     

			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "c##muzihok", "hokclass");
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, start);
			ps.setInt(2, end);
			ResultSet rs = ps.executeQuery();


			while (rs.next()) {
				pmemberList.add(
						new Member(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
								rs.getDate(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getString(10)));

			}


			rs.close();
			ps.close();
			con.close();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pmemberList;
	}

	@Override
	public Member plusWarn(String id) {

		Member plusWarn = new Member();

		String sql = "update member set warn=warn+1 where id=? and warn<4";
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "c##muzihok", "hokclass");
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			int affected = ps.executeUpdate();
			if(affected==0)
				return null;
			plusWarn = getMember(id);
			//			plusWarn = new Member(id);

			ps.close();
			con.close();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return plusWarn;
	}

	@Override
	public Member minusWarn(String id) {

		Member minusWarn = new Member();

		String sql = "update member set warn=warn-1 where id=? and warn!=0";
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "c##muzihok", "hokclass");
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			int affected = ps.executeUpdate();
			if(affected==0)
				return null;
		
			System.out.println(affected);
			minusWarn = getMember(id);
			
			ps.close();
			con.close();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return minusWarn;
	}

	@Override
	public Member getMember() {
		// TODO Auto-generated method stub
		return null;
	}
}