package com.getAttendence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class GetAttendenceJDBC {
	
	public ArrayList<StudentDAO> getList(String branch,String session) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cis","root","@hashCODE304");
		String sql="select name, rollno from student_data where branch=? and session=? order by name";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, branch);
		pstmt.setString(2, session);
		ResultSet rs= pstmt.executeQuery();
		StudentDAO obj;
		ArrayList<StudentDAO> list=new ArrayList<StudentDAO>();
		while(rs.next()){
			obj=new StudentDAO();
			obj.setName(rs.getString("name"));
			obj.setRollno(rs.getString("rollno"));
			list.add(obj);
		}
		return list;
	}

}
