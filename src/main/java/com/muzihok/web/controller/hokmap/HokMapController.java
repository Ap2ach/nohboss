package com.muzihok.web.controller.hokmap;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.muzihok.web.entity.Member;

@WebServlet("/hokmap/list")
public class HokMapController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/hokmap/hokmap_list.jsp");
		dispatcher.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
				String uid =  request.getParameter("reg-uid");
				String pwd =  request.getParameter("reg-pwd");
				String nickname =  request.getParameter("nicname");
				String name =  request.getParameter("name");
				String phone =  request.getParameter("phone");
				String email =  request.getParameter("email");
				String birth =  request.getParameter("birth");
			
		String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
		String sql = "insert into member(id,pwd,name,phone,email,birth,nickname) values(?,?,?,?,?,?,?)";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			Connection con = DriverManager.getConnection(url, "c##muzihok", "hokclass");
			con.setAutoCommit(false);

			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uid);
			st.setString(2, pwd);
			st.setString(3, name);
			st.setString(4, phone);
			st.setString(5, email);
			st.setString(6, birth);
			st.setString(7, nickname);
			
			int affected = st.executeUpdate();
			

			
			con.commit();
			st.close();
			con.close();

			response.sendRedirect("/hokmap/list");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
