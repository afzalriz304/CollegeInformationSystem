package com.TeacherLogin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TeacherLoginJDBC {
	
public boolean getAuthentication(String id,String pwd) throws SQLException, ClassNotFoundException{
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cis","root","@hashCODE304");
		String sql="select id,pwd from teacher_data where id=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, id);
		
		ResultSet rs=pstmt.executeQuery();
		while(rs.next()){
			String rollnoDB=rs.getString("id").trim();
			String pwdDB=rs.getString("pwd").trim();
			System.out.println(rollnoDB);
			System.out.println(pwdDB);
			if(rollnoDB.equals(id) && pwdDB.equals(pwd)){
				return true;
			}
			else {
				return false;
			}
		}
		
		return false;
		
	}
	
	public String getName(String id) throws SQLException, ClassNotFoundException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cis","root","@hashCODE304");
		String sql="select name from teacher_data where id=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, id);
		String name=null;
		ResultSet rs=pstmt.executeQuery();
		while(rs.next()){
			name=rs.getString("name");
		}
		
		return name;
	}

}
