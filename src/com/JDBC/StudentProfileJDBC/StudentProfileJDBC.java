package com.JDBC.StudentProfileJDBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

//import com.JDBC.StudentProfile.StudentDAO;

public class StudentProfileJDBC {

	public ArrayList<StudentProfileDAO> getStudentData(String username) throws SQLException, ClassNotFoundException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cis","root","@hashCODE304");
		String sql="select * from student_data where name=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, username);
		ResultSet rs=pstmt.executeQuery();
		StudentProfileDAO studentDAO;
		ArrayList<StudentProfileDAO> list=new ArrayList<StudentProfileDAO>();
		while(rs.next()){
			studentDAO=new StudentProfileDAO();
			studentDAO.setName(rs.getString("name"));
			studentDAO.setSex(rs.getString("sex"));
			studentDAO.setFather_name(rs.getString("father_name"));
			studentDAO.setAge(rs.getInt("age"));
			studentDAO.setEmail(rs.getString("email"));
			studentDAO.setDob(rs.getString("dob"));
			studentDAO.setStdsession(rs.getString("session"));
			studentDAO.setBranch(rs.getString("branch"));
			studentDAO.setPwd(rs.getString("pwd"));
			studentDAO.setRollno(rs.getString("rollno"));
			
			
			list.add(studentDAO);
		}
		return list;
		
	}
}
