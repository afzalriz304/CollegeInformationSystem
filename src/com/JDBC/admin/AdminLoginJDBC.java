package com.JDBC.admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminLoginJDBC {
	
	public boolean authentication(String id, String pwd) throws SQLException, ClassNotFoundException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cis","root","@hashCODE304");
		
		String sql="select userid, passkey from admin_data where userid=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs=pstmt.executeQuery();
		while(rs.next()){
			String userid=rs.getString("userid");
			String passkey=rs.getString("passkey");
			if(userid.equals(id) && passkey.equals(pwd)){
				return true;
			}
			else{
				return false;
			}
			
		}
		return false;
	}
	
	public String getName(String id) throws SQLException, ClassNotFoundException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cis","root","@hashCODE304");
		String sql="select name from admin_data where userid=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, id);
		String userName=null;
		ResultSet rs=pstmt.executeQuery();
		while(rs.next()){
			userName=rs.getString("name");
		}
		
		return userName;
	}

}
