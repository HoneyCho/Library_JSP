package com.best.library;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Rent {
	int id;

	int book_id;
	int student_id;
	String retrun_date;
	public String student_name;

	public String getStudent_name() {
		return student_name;
	}

	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}

	public String getBook_name() {
		return book_name;
	}

	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}

	public String getReturn_date() {
		return return_date;
	}

	public void setReturn_date(String return_date) {
		this.return_date = return_date;
	}

	String book_name;
	String return_date;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getBook_id() {
		return book_id;
	}

	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}

	public int getStudent_id() {
		return student_id;
	}

	public void setStudent_id(int student_id) {
		this.student_id = student_id;
	}

	public String getRetrun_date() {
		return retrun_date;
	}

	public void setRetrun_date(String retrun_date) {
		this.retrun_date = retrun_date;
	}

	public Rent(int id, int book_id, int student_id, String retrun_date) {
		super();
		this.id = id;
		this.book_id = book_id;
		this.student_id = student_id;
		this.retrun_date = retrun_date;
	}

	public Rent() {

	}

	public static List<Rent> getAllRents() {
		List<Rent> rents = new ArrayList<>();

		try {
			Connection con = DB.getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(
					"select Rent.id,Book.name,Student.name,Rent.return_date from Book join Rent on Book.id=Rent.book_id join Student on Rent.student_id=Student.id");

			while (rs.next()) {
				Rent rent = new Rent();

				rent.student_name = rs.getString("Student.name");

				System.out.println("loop");

				rents.add(rent);
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return rents;

	}
}