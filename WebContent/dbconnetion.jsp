<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="com.best.library.*"%>


<%
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "honey", "root");
	Statement stmt = con.createStatement();
		%>
