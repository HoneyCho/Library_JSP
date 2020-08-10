<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.best.library.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>

	
	<%
	ResultSet rs;
	String n =  new Date();
Stirng y = n.getFullYear();
String m = n.getMonth() + 1;
String d = n.getDate();
document.getElementById("date").innerHTML = m + "/" + d + "/" + y;
	
	
	int book_id = Integer.parseInt((request.getParameter("book")));
	int student_id= Integer.parseInt((request.getParameter("student")));
	String return_date = request.getParameter("return_date");
	
	System.out.print(date);
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "honey", "root");
	String check="select * from Return where student_id=? and book_id=?";
	try{
		PreparedStatement pstmt =con.prepareStatement(check,ResultSet.TYPE_SCOLL_INTENSTIVE,ResultSet.CONCUR_READ_ONLY);
		pstmt.setInt(1,book_id);
		pstmt.setInt(2,student_id);
		pstmt.setString(3,return_date);
		rs=pstmt.executeQuery();
		rs.last();
		if(rs.getRow()>0){
			
			PreparedStatement pstmt1=con.prepareStatement("deletct form Rent where student_id=? and book_id=?");
			pstmt.setInt(1,book_id);
			pstmt.setInt(2,student_id);
			pstmt.setString(3,return_date);
			rs=pstmt.executeQuery();
			
			
		PreparedStatement pstmt2=con.prepareStatement("insert into Return(book_id,student_id,return_date) values(?,?,?)");
		
		}
		
	%>