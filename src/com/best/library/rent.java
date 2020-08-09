package com.best.library;

public class rent {
int id;
String student_name;
public rent(int id, String student_name, String book_name, String date) {
	super();
	this.id = id;
	this.student_name = student_name;
	this.book_name = book_name;
	this.date = date;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
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
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
String book_name;
String date;

}
