package com.makequiz;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class QuizJDBC {


	public ArrayList<QuizDAO> getQuestion(){
		ArrayList<QuizDAO> list=new ArrayList<QuizDAO>();
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cis","root","@hashCODE304");
			String sql="select * from quiz";
			PreparedStatement pstmt=con.prepareStatement(sql);
			//pstmt.setInt(1, count);
			ResultSet rs=pstmt.executeQuery();
			
			QuizDAO obj=null;
			while(rs.next()){
				//count++;
				obj=new QuizDAO();
				obj.setQues(rs.getString("question"));
				obj.setOp1(rs.getString("option1"));
				obj.setOp2(rs.getString("option2"));
				obj.setOp3(rs.getString("option3"));
				obj.setOp4(rs.getString("option4"));
				obj.setAns(rs.getString("answer"));
				list.add(obj);
			}
			
		}catch(Exception e){
			System.out.println(e);
		}
		return list;
	}
}
