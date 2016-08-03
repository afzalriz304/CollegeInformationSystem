package com.makequiz;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


public class MakeQuizJDBC {
public boolean insertQuestion(String ques,String op1,String op2,String op3,String op4,String ans){
		
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cis","root","@hashCODE304");
			String sql="insert into quiz"
					+"(question,option1,option2,option3,option4,answer)"
					+"values(?,?,?,?,?,?)";
			PreparedStatement pstmt=con.prepareStatement(sql);
			
			pstmt.setString(1, ques);
			pstmt.setString(2, op1);
			pstmt.setString(3, op2);
			pstmt.setString(4, op3);
			pstmt.setString(5, op4);
			pstmt.setString(6, ans);
			//pstmt.setInt(7, Qno);
			int i=pstmt.executeUpdate();
			if(i>0){
				return true;
			}
			else{
				return false;
			}
		}catch(Exception e){
			System.out.println(e);
		}
		return true;
	}

}
