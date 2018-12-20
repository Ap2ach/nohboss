package com.muzihok.web.service.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.muzihok.web.entity.Board;
import com.muzihok.web.entity.BoardView;
import com.muzihok.web.service.BoardService;

public class JdbcBoardService implements BoardService {

	@Override
	public List<BoardView> getBoardViewList(String boardcategory, int page, int sort) {
		// TODO Auto-generated method stub

		List<BoardView> list = new ArrayList<>();

		String ord = "REGDATE";
		switch (sort) {
		case 1:
			ord = "REGDATE";
			break;
		case 2:
			ord = "RECOMMEND";
			break;
		case 3:
			ord = "COMMENT_COUNT";
			break;
		case 4:
			ord = "HIT";
		}

		String sql = "SELECT B.* FROM (SELECT * FROM BOARD_VIEW WHERE CATEGORY_ID=? ORDER BY " + ord
				+ " DESC)B WHERE ROWNUM BETWEEN ? AND ?";

		try {

			int start = 1 + (page - 1) * 10;
			int end = page * 10;

			String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "c##muzihok", "hokclass");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, boardcategory);
			st.setInt(2, start);
			st.setInt(3, end);

			ResultSet rs = st.executeQuery();

			while (rs.next()) {
				BoardView n = new BoardView(rs.getInt("id"), rs.getString("title"), rs.getString("writer_id"),
						rs.getString("content"), rs.getDate("regdate"), rs.getInt("hit"), rs.getInt("recommend"),
						rs.getString("category_id"), rs.getInt("comment_count"));
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
	public List<BoardView> getBoardViewList(String boardcategory, int page, int sort, String query, String field) {
		// TODO Auto-generated method stub
		List<BoardView> list = new ArrayList<>();

		String sql = null;

		if (!field.equals("titleContent")) {
			sql = "SELECT * FROM (SELECT ROWNUM NUM, B.* FROM BOARD_VIEW B WHERE REGEXP_LIKE(" + field + ", '^*" + query
					+ "$*')) WHERE NUM BETWEEN ? AND ?";
		} else {
			sql = "SELECT * FROM (SELECT ROWNUM NUM, B.* FROM BOARD_VIEW B WHERE REGEXP_LIKE(TITLE, '^*" + query
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
				BoardView n = new BoardView(rs.getInt("id"), rs.getString("title"), rs.getString("writer_id"),
						rs.getString("content"), rs.getDate("regdate"), rs.getInt("hit"), rs.getInt("recommend"),
						rs.getString("category_id"), rs.getInt("comment_count"));

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
	public List<BoardView> getBoardViewList(String boardcategory, int page, int sort, String dcId) {
		// TODO Auto-generated method stub
		List<BoardView> list = new ArrayList<>();

		String ord = "REGDATE";
		switch (sort) {
		case 1:
			ord = "REGDATE";
			break;
		case 2:
			ord = "RECOMMEND";
			break;
		case 3:
			ord = "COMMENT_COUNT";
			break;
		case 4:
			ord = "HIT";
		}

			boolean chk = false;

			String sql = "SELECT B.* FROM (SELECT * FROM BOARD_VIEW WHERE CATEGORY_ID=? ORDER BY " + ord
					+ " DESC)B WHERE ROWNUM BETWEEN ? AND ?";

			if (dcId != null && !dcId.equals("")) {
				sql = "SELECT B.* FROM (SELECT * FROM BOARD_VIEW WHERE CATEGORY_ID=? and DC_ID=? ORDER BY " + ord
						+ " DESC)B WHERE ROWNUM BETWEEN ? AND ?";
				chk = true;
			}

			try {

				int start = 1 + (page - 1) * 10;
				int end = page * 10;

				String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection(url, "c##muzihok", "hokclass");
				PreparedStatement st = con.prepareStatement(sql);

				if (chk == false) {
					st.setString(1, boardcategory);
					st.setInt(2, start);
					st.setInt(3, end);

				} else {
					st.setString(1, boardcategory);
					st.setString(2, dcId);
					st.setInt(3, start);
					st.setInt(4, end);
				}

				System.out.println("sql: " + sql);
				System.out.println("boardcategory: " + boardcategory);
				System.out.println("dcId: " + dcId);

				ResultSet rs = st.executeQuery();

				while (rs.next()) {
					BoardView n = new BoardView(rs.getInt("id"), rs.getString("title"), rs.getString("writer_id"),
							rs.getString("content"), rs.getDate("regdate"), rs.getInt("hit"), rs.getInt("recommend"),
							rs.getString("category_id"), rs.getString("dc_id"), rs.getInt("comment_count"));
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
