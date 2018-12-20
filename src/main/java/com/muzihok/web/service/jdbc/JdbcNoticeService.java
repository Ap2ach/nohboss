package com.muzihok.web.service.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.muzihok.web.entity.Notice;
import com.muzihok.web.service.NoticeService;

public class JdbcNoticeService implements NoticeService {

	@Override
	public List<Notice> getNotice(int page) {
		List<Notice> noticeList = new ArrayList<>();
		
		String sql = "select * from" +" ("+"select rownum num, s.* from" 
				 +" ("+"select * from board order by regdate desc"+")"+" s"+") "+"d where num between ? and ?";
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
			while(rs.next()) {
				noticeList.add(new Notice(
						rs.getString(4),
						rs.getString(3),
						rs.getDate(6)));
				
			}
			for (Notice noticeList2: noticeList) {
				System.out.println(noticeList2);
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
		return noticeList;
	}

	@Override
	public List<Notice> getNotice() {
		// TODO Auto-generated method stub
		return null;
	}
}
