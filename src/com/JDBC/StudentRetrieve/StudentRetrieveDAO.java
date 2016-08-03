package com.JDBC.StudentRetrieve;

public class StudentRetrieveDAO {
	
	String Studentname;
	String rollno;
	String sex;
	String department;
	String Stndsession;
	public String getStudentname() {
		return Studentname;
	}
	public void setStudentname(String studentname) {
		Studentname = studentname;
	}
	public String getRollno() {
		return rollno;
	}
	public void setRollno(String rollno) {
		this.rollno = rollno;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getStndsession() {
		return Stndsession;
	}
	public void setStndsession(String stndsession) {
		Stndsession = stndsession;
	}

}
