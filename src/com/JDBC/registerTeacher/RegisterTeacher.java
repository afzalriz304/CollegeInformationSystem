package com.JDBC.registerTeacher;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;

public class RegisterTeacher {

	public boolean registerTeacher(String name, String father_name,String sex, String email,String id, 
			int age,String department,int joining,String dob,String pwd) throws SQLException, ParseException, ClassNotFoundException{
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cis","root","@hashCODE304");
		String sql="insert into teacher_data"
					+"(name,father_name,gender,email,id,age,department,joining,pwd,dob)"
					+"values(?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, father_name);
		pstmt.setString(3, sex);
		pstmt.setString(4, email);
		pstmt.setString(5, id);
		pstmt.setInt(6, age);
		pstmt.setString(7, department);
		pstmt.setInt(8, joining);
		pstmt.setString(9, pwd);
		pstmt.setString(10, dob);

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
}
