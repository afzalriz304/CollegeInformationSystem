package com.controller.StudentRetrieve;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.JDBC.StudentRetrieve.StudentRetrieveDAO;

public class StudentRetrieveJDBC {

	
	public ArrayList<StudentRetrieveDAO> getData() throws ClassNotFoundException, SQLException{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cis","root","@hashCODE304");
	
	String sql="select rollno,name,sex,branch,session from student_data order by rollno";
	PreparedStatement pstmt=con.prepareStatement(sql);
	ResultSet rs=pstmt.executeQuery();
	ArrayList<StudentRetrieveDAO> list=new ArrayList<StudentRetrieveDAO>();
	StudentRetrieveDAO data;
	while(rs.next()){
		data=new StudentRetrieveDAO();
		data.setRollno(rs.getString("rollno"));
		data.setStudentname(rs.getString("name"));
		data.setSex(rs.getString("sex"));
		data.setStndsession(rs.getString("session"));
		data.setDepartment(rs.getString("branch"));
		list.add(data);
	}
	return list;
}
}
