package com.muzihok.web.service.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.muzihok.web.entity.BoardView;
import com.muzihok.web.entity.Notice;
import com.muzihok.web.service.NoticeService;

public class JdbcNoticeService implements NoticeService{

	@Override
	public List<Notice> getNoticeList(int page, int sort) {
		// TODO Auto-generated method stub
		List<Notice> list = new ArrayList<>();

		String ord = "REGDATE";
		switch (sort) {
		case 1:
			ord = "REGDATE";
			break;
		case 2:
			ord = "HIT";
			break;
		}

		String sql = "SELECT N.* FROM (SELECT * FROM NOTICE ORDER BY " + ord
				+ " DESC)N WHERE ROWNUM BETWEEN ? AND ?";

		try {

			int start = 1 + (page - 1) * 10;
			int end = page * 10;

			String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "c##muzihok", "hokclass");
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, start);
			st.setInt(2, end);

			ResultSet rs = st.executeQuery();

			while (rs.next()) {
				Notice n = new Notice(
						rs.getInt("id"),
						rs.getString("title"), 
						rs.getString("writer_id"),
						rs.getString("content"), 
						rs.getDate("regdate"), 
						rs.getInt("hit"), 
						rs.getString("seq")
				);
				
				list.add(n);
				
			}

			rs.close();
			st.close();
			con.close();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}

	
	
	
	@Override
	public List<Notice> getNoticeList(int page, int sort, String seq) {
		// TODO Auto-generated method stub
		
		List<Notice> list = new ArrayList<>();

		String ord = "REGDATE";
		switch (sort) {
		case 1:
			ord = "REGDATE";
			break;
		case 2:
			ord = "HIT";
			break;
		}

		String sql = "SELECT N.* FROM (SELECT * FROM NOTICE WHERE SEQ = ? ORDER BY " + ord
				+ " DESC)N WHERE ROWNUM BETWEEN ? AND ?";

		try {

			int start = 1 + (page - 1) * 10;
			int end = page * 10;

			String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "c##muzihok", "hokclass");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, seq);
			st.setInt(2, start);
			st.setInt(3, end);

			ResultSet rs = st.executeQuery();

			while (rs.next()) {
				Notice n = new Notice(
						rs.getInt("id"),
						rs.getString("title"), 
						rs.getString("writer_id"),
						rs.getString("content"), 
						rs.getDate("regdate"), 
						rs.getInt("hit"), 
						rs.getString("seq")
				);
				
				list.add(n);
				
			}

			rs.close();
			st.close();
			con.close();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}




	@Override
	public List<Notice> getNoticeList(int page, int sort, String query, String field) {
		// TODO Auto-generated method stub
		
		List<Notice> list = new ArrayList<>();

		String sql = null;

		if (!field.equals("titleContent")) {
			sql = "SELECT * FROM (SELECT ROWNUM NUM, N.* FROM NOTICE N WHERE REGEXP_LIKE(" + field + ", '^*" + query
					+ "$*')) WHERE NUM BETWEEN ? AND ?";
		} else {
			sql = "SELECT * FROM (SELECT ROWNUM NUM, N.* FROM NOTICE N WHERE REGEXP_LIKE(TITLE, '^*" + query
					+ "$*') OR " + "REGEXP_LIKE(CONTENT, '^*" + query + "$*')) WHERE NUM BETWEEN ? AND ?";
		}

		try {

			int start = 1 + (page - 1) * 10;
			int end = page * 10;

			String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "c##muzihok", "hokclass");
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, start);
			st.setInt(2, end);

			ResultSet rs = st.executeQuery();

			while (rs.next()) {
				Notice n = new Notice(
						rs.getInt("id"),
						rs.getString("title"), 
						rs.getString("writer_id"),
						rs.getString("content"), 
						rs.getDate("regdate"), 
						rs.getInt("hit"), 
						rs.getString("seq")
				);

				list.add(n);
			}

			rs.close();
			st.close();
			con.close();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}

	
}
