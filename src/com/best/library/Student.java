package com.best.library;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.SQLException;

public class Student {
	public int id;
	public String name;
	public String grade;
	public String address;
	public String phone;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Student() {

	}

	public Student(int id, String name, String grade, String address, String phone) {
		super();
		this.id = id;
		this.name = name;
		this.grade = grade;
		this.address = address;
		this.phone = phone;
	}
	
	public String getIdString () {
		return String.valueOf(id);
	}

	public static List<Student> getAllStudent() throws ClassNotFoundException, SQLException {
		List<Student> studentlist = new ArrayList<Student>();
		Connection con;
		ResultSet rs;
		try {
			con = DB.getConnection();
			Statement stmt = con.createStatement();
			rs = stmt.executeQuery("select * from Student");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			return studentlist;
		}

		try {
			while (rs.next()) {
				Student student = new Student();
				student.setId(rs.getInt("id"));
				student.setName(rs.getString("name"));
				student.setGrade(rs.getString("grade"));
				student.setAddress(rs.getString("address"));
				student.setPhone(rs.getString("phone"));

				studentlist.add(student);

			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}

		return studentlist;

	}

}
