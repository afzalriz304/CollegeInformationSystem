package com.JDBC.StudentLogin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class StudentLoginJDBC {

public boolean getAuthentication(String rollno,String pwd) throws SQLException, ClassNotFoundException{
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cis","root","@hashCODE304");
		String sql="select rollno,pwd from student_data where rollno=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, rollno);
		
		ResultSet rs=pstmt.executeQuery();
		while(rs.next()){
			String rollnoDB=rs.getString("rollno").trim();
			String pwdDB=rs.getString("pwd").trim();
			System.out.println(rollnoDB);
			System.out.println(pwdDB);
			if(rollnoDB.equals(rollno) && pwdDB.equals(pwd)){
				return true;
			}
			else {
				return false;
			}
		}
		
		return false;
		
	}
	
	public String getName(String rollno) throws SQLException, ClassNotFoundException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cis","root","@hashCODE304");
		String sql="select name from student_data where rollno=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, rollno);
		String name=null;
		ResultSet rs=pstmt.executeQuery();
		while(rs.next()){
			name=rs.getString("name");
		}
		
		return name;
	}

}
