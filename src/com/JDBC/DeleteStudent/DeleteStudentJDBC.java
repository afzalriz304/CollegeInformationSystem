package com.JDBC.DeleteStudent;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteStudentJDBC {
	
	public boolean deleteStudent(String rollno) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cis","root","@hashCODE304");
		
		String sql="delete from student_acedemics where roll_no=?";
		PreparedStatement pstmt1=con.prepareStatement(sql);
		pstmt1.setString(1, rollno);
		pstmt1.executeUpdate();
		String sql2="delete from student_data where rollno=?";
		PreparedStatement pstmt=con.prepareStatement(sql2);
		pstmt.setString(1, rollno);
		int i=pstmt.executeUpdate();
		if(i>0){
			return true;
		}
		else{
			return false;
		}
	}

}
