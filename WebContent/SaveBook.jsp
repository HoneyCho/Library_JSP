<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.best.library.*"%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>


<%
	try {
	
	String name = request.getParameter("name");
	int category = Integer.parseInt(request.getParameter("category"));
	
	String price = request.getParameter("price");
	String author = request.getParameter("author");
	String isbn = request.getParameter("isbn");
	System.out.print(category);

	 Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "honey", "root");

	String sql = "insert into Book(id,name,author,category,price,isbn) value(null,?,?,?,?,?)";
	System.out.println("Inserting is successful!");
	
	 try {
		
	java.sql.PreparedStatement pstmt = con.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
	
  	pstmt.setString(1, name);
  	pstmt.setString(2, author);
 	pstmt.setInt(3, category);
 	pstmt.setString(4, price);
 	pstmt.setString(5, isbn);

	int status = pstmt.executeUpdate();
	 if (status > 0)
		System.out.println("Insert is successful book!");
		

	} catch (SQLException e) {
		e.printStackTrace();
	} 
	 
	 String host =  request.getServerName().toString();
		String port = String.valueOf(request.getServerPort());
		String redirectURL = "http://"+host+":"+port+"/Library/BookList.jsp";
		response.sendRedirect(redirectURL);
		
	
	
} catch (Exception e) {
	System.out.println(e);
}
%>
