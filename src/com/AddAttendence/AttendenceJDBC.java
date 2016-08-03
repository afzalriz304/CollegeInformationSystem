package com.AddAttendence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AttendenceJDBC {
	public boolean Upload(String rollno, String val) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cis","root","@hashCODE304");
		String sql="select attnd,total from student_acedemics where roll_no=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, rollno);
		ResultSet rs=pstmt.executeQuery();
		while(rs.next()){
			
			int total=Integer.parseInt(rs.getString("total"));
			int attnd=Integer.parseInt(rs.getString("attnd"));
			total++;
			String sqlUpdate="update student_acedemics set attnd=? , total=? where roll_no=?";
			PreparedStatement pstmt1=con.prepareStatement(sqlUpdate);
			if(val.equals("1")){
				attnd++;
			}
			pstmt1.setInt(1, attnd);
			pstmt1.setInt(2, total);
			pstmt1.setString(3, rollno);
			if(pstmt1.executeUpdate()>0){
				return true;
			}
			
		}
		return false;
		
		/*String sql="update student_acedemics set attnd=? where roll_no=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		if(val.equals("1")){
			pstmt.setInt(1, 1);
		}*/
	}

}
