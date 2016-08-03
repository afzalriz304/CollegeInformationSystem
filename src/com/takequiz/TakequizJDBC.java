package com.takequiz;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TakequizJDBC {
	
	int marks=0;
	
	public int calculation(String answer,String ques)throws ClassNotFoundException,SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cis","root","@hashCODE304");
		String sql="select answer from quiz where question=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, ques);
		ResultSet rs=pstmt.executeQuery();
		while(rs.next()){
			String ansBD=rs.getString("answer").trim();
			if(answer.equals(ansBD)){
				marks=marks+3;
			}
			else if(ansBD.equals("null")){
				marks=marks;
			}
			else{
				marks--;
			}
		}
		return marks;
			
	}

}
