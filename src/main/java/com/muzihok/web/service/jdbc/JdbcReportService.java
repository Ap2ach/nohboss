package com.muzihok.web.service.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.muzihok.web.entity.Report;
import com.muzihok.web.entity.ReportAnswer;
import com.muzihok.web.service.ReportService;

public class JdbcReportService implements ReportService {

	

	@Override
	public int insertReport(Report report,String ... files) {
		// TODO Auto-generated method stub
		
		String sql_1 ="insert into report (id,writer_id,reg_type,reg_title,reg_content) values (BOARD_SEQ.nextval,?,?,?,?)";
		String sql_2= "select id from (select * from REPORT order by regdate desc ) where rownum=1";
		String sql_3= "insert into file_BOARD (ID, NAME, BOARD_ID) "
	            + "VALUES(FILE_SEQ.NEXTVAL, ?, ?)";

		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
		int affected=0;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		
			Connection con = DriverManager.getConnection(url,"c##muzihok","hokclass");
			con.setAutoCommit(false);
			PreparedStatement st_1 = con.prepareStatement(sql_1);
			st_1.setString(1, report.getWriterId());
			st_1.setString(2, report.getRegType());
			st_1.setString(3, report.getTitle());
			st_1.setString(4, report.getContent());
			affected =st_1.executeUpdate();
			if(affected==0) return 0;
			st_1.close();
			
			PreparedStatement st_2 = con.prepareStatement(sql_2);
			ResultSet rs = st_2.executeQuery();
			if(!rs.next()) return 0;
			int id = rs.getInt("id");
			rs.close();
			st_2.close();
			
			
			for(String file : files) {
				PreparedStatement st_3 = con.prepareStatement(sql_3);
				st_3.setString(1, file);
				st_3.setInt(2, id);
				affected=st_3.executeUpdate();
				if(affected==0)	return 0;
				st_3.close();
			}
			
			
			con.commit();
			con.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return affected;
	}

	
	@Override
	public List<Report> getReportList() {
		// TODO Auto-generated method stub
		return getReportList("",1, "", "total");
	}
	@Override
	public List<Report> getReportList(String uid) {
		// TODO Auto-generated method stub
		return getReportList(uid,1, "", "total");
	}

	@Override
	public List<Report> getReportList(String uid,int page) {
		// TODO Auto-generated method stub
		return getReportList(uid,page, "", "total");
	}


	@Override
	public List<Report> getReportList(String uid,int page, String query) {
		// TODO Auto-generated method stub
		return getReportList(uid,page, query, "total");
	}
	
	@Override
	public List<Report> getReportList(String uid,int page, String query, String category) {
		// TODO Auto-generated method stub
		//리스트 보여주는 것 
		List<Report> list=new ArrayList<>();
	
		
		
		//제목 
		try {
						
			int start = 1+(page-1)*10; //    해당페이지 부터  + 10개의 글을 가져올까?
			int end = page*10;			
			
			String sql ="";
			String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url,"c##muzihok","hokclass");
			PreparedStatement st = null;	
			ResultSet rs =null;
			if(category.equals("total")) {

				sql = "select * from "+
			    "(select rownum num, n.* from" + 
			    	    " (select * from report where writer_id like ? and "+
			    "reg_title like ? or reg_content like ? "+
			    	    " order by regdate desc) n ) "+
			    "where num between ? and ?";
				
				st = con.prepareStatement(sql);	
				
				st.setString(1, "%"+uid+"%");
				st.setString(2, "%"+query+"%");
				/*System.out.println("%"+query+"%");*/
				st.setString(3, "%"+query+"%");
				
				st.setInt(4, start);
				st.setInt(5, end);
				rs =st.executeQuery();
			}else if (category.equals("title")){

				sql = "select * from "+
					    "(select rownum num, n.* from" + 
					    	    " (select * from report where writer_id like ? and "+
					    "reg_title like ?"+
					    	    " order by regdate desc) n ) "+
					    "where num between ? and ?";
				
				st = con.prepareStatement(sql);
				st.setString(1, "%"+uid+"%");
				st.setString(2, "%"+query+"%");
				st.setInt(3, start);
				st.setInt(4, end);
				rs =st.executeQuery();
			}else if (category.equals("content")) {
			//	내용키워드 = 쿼리 
				sql = "select * from "+
					    "(select rownum num, n.* from" + 
					    	    " (select * from report where writer_id like ? and "+
					    "reg_content like ? "+
					    	    " order by regdate desc) n ) "+
					    "where num between ? and ?";
				
				st = con.prepareStatement(sql);
				st.setString(1, "%"+uid+"%");
				st.setString(2, "%"+query+"%");
				st.setInt(3, start);
				st.setInt(4, end);
				rs =st.executeQuery();
			}else {return null;}
			
			
			
			while(rs.next()) {
				Report report = new Report(
					rs.getInt("id"), 				//게시글 넘버 
					rs.getString("writer_id"), 			//작성자 아이디 
					rs.getDate("regdate"), 				//문의 등록일 
					rs.getString("reg_Type"), 			//문의유혀
					rs.getString("reg_title"), 			//문의제목
					rs.getString("reg_content"),				//문의내용
					rs.getBoolean("hasAnswer")
				);
			
				list.add(report);
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
	public Report getReport(int id) {								//디테일용 
		// TODO Auto-generated method stub
		
		Report report=null;
		
		String sql ="select * from report where id=?";
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		
			Connection con = DriverManager.getConnection(url,"c##muzihok","hokclass");
			PreparedStatement st  = con.prepareStatement(sql);
			st.setInt(1, id);
			ResultSet rs =st.executeQuery();
			
			if(rs.next()) {
				System.out.println("  skdhkTek");
				 report = new Report(
					rs.getInt("id"), 				//게시글 넘버 
					rs.getString("writer_id"), 			//작성자 아이디 
					rs.getDate("regdate"), 				//문의 등록일 
					rs.getString("reg_type"), 			//문의유형
					rs.getString("reg_title"), 			//문의제목
					rs.getString("reg_content"),				//문의내용
					rs.getBoolean("hasanswer")
					);
			}				
			
			rs.close();
			st.close();
			con.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("에러떴다");
		}
		return report;
	}



	@Override
	public int deleteReport(int id) {
		// TODO Auto-generated method stub
		String sql = "delete from report where id=?";
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
		int  affected=0;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		
			Connection con = DriverManager.getConnection(url,"c##muzihok","hokclass");
			PreparedStatement st = null;
			st = con.prepareStatement(sql);
			st.setInt(1, id);
			affected =st.executeUpdate();
			if(affected==0) return 0;
			
			st.close();
			con.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return affected;
	}



	@Override					//답변 등록이 되면 해당 답변에 대한 게시글의 statement ... 답변 완료로 바꾸자    .... 쿼리문 을 짜면 좋겠다. 
	public ReportAnswer getReportAns(int id) {
		// TODO Auto-generated method stub
		ReportAnswer answer=null;
		
		String sql ="select * from reportanswer where id=?";
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		
			Connection con = DriverManager.getConnection(url,"c##muzihok","hokclass");
			PreparedStatement st = null;
			st = con.prepareStatement(sql);
			st.setInt(1, id);
			ResultSet rs =st.executeQuery();
			
			if(rs.next()) {
				 answer = new ReportAnswer(
					rs.getInt("id"), 				//게시글 넘버 
					rs.getInt("re_id"),				//답변 대상 게시글 넘버 
					rs.getString("admin_id"), 			//작성자 아이디 
					rs.getDate("regdate"), 				//답변 등록일 
					rs.getString("ans_title"), 			//답변제목
					rs.getString("ans_content") 			//답변내용
					);
			}				
			
			rs.close();
			st.close();
			con.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return answer;
	}



	@Override
	public int insertReportAns(ReportAnswer answer, String... files) {
		// TODO Auto-generated method stub
		//문의 답변 테이블에 추가 
		String sql_1 ="insert into reportAnswer (id,re_id,admin_id,ans_title,ans_content) values (BOARD_SEQ.nextval,?,?,?,?)";
		//방금 추가한 문의 답변 id 따오기 
		String sql_2="select id from (select * from reportAnswer order by regdate desc ) where rownum=1";
		//해당 id와  첨부 파일들 연결후, 파일 테이블에 추가 
		String sql_3=  "insert into FILE_BOARD (ID, NAME, BOARD_ID) "
	            + "VALUES(FILE_SEQ.NEXTVAL, ?, ?)";
		//해당 답변의 질문자 게시글 답변완료 true로 바꾸자. 
		String sql_4 = "update report set hasAnswer=1 where id=?";
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
		int affected=0;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		
			Connection con = DriverManager.getConnection(url,"c##muzihok","hokclass");
			con.setAutoCommit(false);
			PreparedStatement st_1 = con.prepareStatement(sql_1);
			st_1.setInt(1, answer.getId());
			st_1.setInt(2, answer.getReId());
			st_1.setString(3, answer.getAdminId());
			st_1.setString(4, answer.getAnsTitle());
			st_1.setString(5, answer.getAnsContent());
			affected =st_1.executeUpdate();
			if(affected==0) return 0;
			st_1.close();
			
			PreparedStatement st_2 = con.prepareStatement(sql_2);
			ResultSet rs = st_2.executeQuery();
			if(!rs.next()) return 0;
			int id = rs.getInt("id");
			rs.close();
			st_2.close();
			
			PreparedStatement st_3 = con.prepareStatement(sql_3);
			for(String file : files) {
				st_3.setString(1, file);
				st_3.setInt(2, id);
				affected=st_3.executeUpdate();
				if(affected==0)	return 0;
			}
			st_3.close();
			
			
			PreparedStatement st_4 = con.prepareStatement(sql_4);
			st_4.setInt(1, answer.getReId());
			affected = st_4.executeUpdate();
			if(affected==0) return 0;
			st_4.close();
			
			con.commit();
			con.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return affected;
	}


// 겟 메소드   취하고..... 폼에서 넘어오는 데이터 셋메소드 취하자. 데이터 넘어오는거로 바꿔
	//겟메소드 ...  ..... 리포트 앤서 객체 가져오고 , ..... 넘어오는 데이터 셋메소드로 바꾸자.   이거의 아이디를 이거의 내용으로 바꾸자 
	@Override
	public int updateReportAns(ReportAnswer answer, String ... files) {
		
		//해당 id에 대한 답변 내용 변경한다.
		String sql_1 = "update reportAnswer set ans_title=?, ans_content=? where id=?" ;
		//게시글 아이디 ... 수정 대상  게시글이 갖고 있는 파일 정보 전부 삭제한다. 
		String sql_2 = "delete from FILE_BOARD where board_id=?";	
		//해당 게시글에 새로운 파일로 추가한다. (이건 파일 갯수에 따라서 )
 		String sql_3=  "insert into FILE_BOARD (ID, NAME, BOARD_ID) VALUES(FILE_SEQ.NEXTVAL, ?, ?)";

		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
		int affected=0;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		
			Connection con = DriverManager.getConnection(url,"c##muzihok","hokclass");
			con.setAutoCommit(false);
			PreparedStatement st_1 = con.prepareStatement(sql_1);
			st_1.setString(1, answer.getAnsTitle());
			st_1.setString(2, answer.getAnsContent());
			st_1.setInt(3, answer.getId());
			affected =st_1.executeUpdate();
			if(affected==0) return 0;
			st_1.close();
			//기존의 글을 삭제한다. 
			PreparedStatement st_2 = con.prepareStatement(sql_2);
			st_2.setInt(1, answer.getId());
			affected = st_2.executeUpdate();
			if(affected==0) return 0;
			st_2.close();
			
			PreparedStatement st_3 = con.prepareStatement(sql_3);
			for(String file : files) {
				st_3.setString(1, file);
				st_3.setInt(2, answer.getId());
				affected=st_3.executeUpdate();
				if(affected==0)	return 0;
			}
			st_3.close();
			
			con.commit();
			con.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return affected;
	}



	@Override
	public int deleteReportAns(int id) {
		// TODO Auto-generated method stub
		
		String sql_1 = "delete from reportanswer where id=?";
		String sql_2 = "update report set hasAnswer=0 where id=?";
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl"; 
		int  affected=0;
		int user_id=getReportAns(id).getReId();					// ㅇ질문한 애  글  id 가져옴 ... 상태 변경위해 
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		
			Connection con = DriverManager.getConnection(url,"c##muzihok","hokclass");
			con.setAutoCommit(false);
			PreparedStatement st_1 = con.prepareStatement(sql_1);
			st_1.setInt(1, id);
			affected =st_1.executeUpdate();
			if(affected==0) return 0;
			
			st_1.close();
			
			PreparedStatement st_2 = con.prepareStatement(sql_2);
			st_2.setInt(1, user_id);
			affected =st_1.executeUpdate();
			if(affected==0) return 0;
			
			st_2.close();
			
			con.commit();
			con.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return affected;
	}



	


}
