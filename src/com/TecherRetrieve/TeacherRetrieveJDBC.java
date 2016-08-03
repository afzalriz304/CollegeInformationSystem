package com.TecherRetrieve;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class TeacherRetrieveJDBC {

	public ArrayList<TeacherRetrieveDAO> getData() throws ClassNotFoundException, SQLException{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cis","root","@hashCODE304");
	
	String sql="select id,name,gender,department,age from teacher_data order by name";
	PreparedStatement pstmt=con.prepareStatement(sql);
	ResultSet rs=pstmt.executeQuery();
	ArrayList<TeacherRetrieveDAO> list=new ArrayList<TeacherRetrieveDAO>();
	TeacherRetrieveDAO data;
	while(rs.next()){
		data=new TeacherRetrieveDAO();
		data.setId(rs.getString("id"));
		data.setName(rs.getString("name"));
		data.setDepartment(rs.getString("department"));
		data.setGender(rs.getString("gender"));
		data.setAge(rs.getInt("age"));
		list.add(data);
	}
	return list;
}
}
