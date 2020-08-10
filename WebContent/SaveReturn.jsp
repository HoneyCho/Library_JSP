<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.best.library.*"%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%
String rent_id=request.getParameter("rent_id");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "honey", "root");

String sql="update Rent set `return`=1, `return_date`=NOW() where id="+rent_id;

java.sql.PreparedStatement pstmt = con.prepareStatement(sql);

pstmt.executeUpdate();
System.out.print("update successful");

String host =  request.getServerName().toString();
String port = String.valueOf(request.getServerPort());
String redirectURL = "http://"+host+":"+port+"/Library/RentList.jsp";
response.sendRedirect(redirectURL);
%>