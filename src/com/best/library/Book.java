package com.best.library;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Book {
	int id;
	String name;
	String category;
	int price;
	String isbn;
	String author;
	String qty;

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

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getQty() {
		return qty;
	}

	public void setQty(String qty) {
		this.qty = qty;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}
	public Book() {

	}

	public Book(int id, String name, String author, String category, int price, String isbn) {
		super();
		this.id = id;
		this.name = name;
		this.author = author;
		this.category = category;
		this.price = price;
		this.isbn = isbn;
		this.qty = qty;
	}

	
	public String getIdAsString () {
		return String.valueOf(id);
	}
	public static List<Book> getAllBooks() {
		List<Book> booklist = new ArrayList<>();
		Connection con;
		ResultSet rs;
		try {
			con = DB.getConnection();
			Statement stmt = con.createStatement();
			rs = stmt.executeQuery("select * from Book");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			return booklist;
		}

		try {
			while (rs.next()) {
				Book book = new Book();
				book.setId(rs.getInt("id"));
				book.setName(rs.getString("name"));
				book.setAuthor(rs.getString("author"));
				book.setCategory(rs.getString("category"));
				book.setPrice(rs.getInt("price"));
				book.setIsbn(rs.getString("isbn"));
				System.out.println("book list");

				booklist.add(book);
			}
			
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		
		return booklist;
	}

}
