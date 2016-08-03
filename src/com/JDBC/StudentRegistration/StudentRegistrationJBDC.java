package com.JDBC.StudentRegistration;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class StudentRegistrationJBDC {
	

	
	public boolean registerStudent(String name, String father_name,String sex, String email,String rollno, 
			int age,String branch,String Studsession,String dob,String pwd) throws SQLException, ParseException, ClassNotFoundException{
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cis","root","@hashCODE304");
		String sql="insert into student_data"
					+"(name,father_name,sex,email,rollno,age,session,dob,branch,pwd)"
					+"values(?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, father_name);
		pstmt.setString(3, sex);
		pstmt.setString(4, email);
		pstmt.setString(5, rollno);
		pstmt.setInt(6, age);
		pstmt.setString(7, Studsession);
		pstmt.setString(8, dob);
		pstmt.setString(9, branch);
		pstmt.setString(10, pwd);

		int rowAffected=pstmt.executeUpdate();
	    if(rowAffected==0){
	    	System.out.println("I am return false");
	    	return false;
	    }
	    else{
	    	System.out.println("I am return true");
	    	return true;
	    }
	    
	}
	
	public void addAcedemics(String rollno) throws SQLException, ClassNotFoundException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cis","root","@hashCODE304");
		
		String sql="insert into student_acedemics"
				+"(roll_no,marks,total,attnd)"
				+"values(?,0,0,0)";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, rollno);
		pstmt.executeUpdate();
	}

}
