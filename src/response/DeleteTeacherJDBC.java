package response;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteTeacherJDBC {
	public boolean deleteTeacher(String id) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cis","root","@hashCODE304");
		
		String sql="delete from teacher_data where id=?";
		PreparedStatement pstmt1=con.prepareStatement(sql);
		pstmt1.setString(1, id);
		int i=pstmt1.executeUpdate();
		/*String sql2="delete from student_data where id=?";
		PreparedStatement pstmt=con.prepareStatement(sql2);
		pstmt.setString(1, rollno);
		*/
		
		if(i>0){
			return true;
		}
		else{
			return false;
		}
	}

}
