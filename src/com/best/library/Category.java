package com.best.library;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Category {
	public int id;
	String category_name;
	public Category(int id, String category_name) {
		super();
		this.category_name = category_name;
		this.id = id;
	}

public String getIdString () {
	return String.valueOf(id);
}
	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	public static List<Category> getAllCategories() {
		List<Category> cats = new ArrayList<>();
		
		try {
			Connection con = DB.getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from Book_Category");
			
			while (rs.next()) {
				Category cat = new Category(rs.getInt("id"), rs.getString("category_name"));
				System.out.println("loop!");

			cats.add(cat);
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return cats;
	}
}
