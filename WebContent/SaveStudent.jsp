<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.best.library.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>


<%
	try {
		
		
	String name = request.getParameter("name");
	String grade = request.getParameter("grade");
	
	String address = request.getParameter("address");
	String phone = request.getParameter("phone");
	

	 Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "honey", "root");

	String sql = "insert into Student(id,name,grade,address,phone) value(null,?,?,?,?)";
	System.out.println("Inserting is successful student!");
		
	
	 try {
		
	java.sql.PreparedStatement pstmt = con.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
	
  	pstmt.setString(1, name);
  	pstmt.setString(2, grade);
 	pstmt.setString(3, address);
 	pstmt.setString(4, phone);
 	

	int status = pstmt.executeUpdate();
	 if (status > 0) {
		//System.out.println("Inserting is successful!");
	 }

	} catch (SQLException e) {
		e.printStackTrace();
	} 
	 
		String host =  request.getServerName().toString();
		String port = String.valueOf(request.getServerPort());
		String redirectURL = "http://"+host+":"+port+"/Library/StudentList.jsp";
		response.sendRedirect(redirectURL);
		
		
} catch (Exception e) {
	System.out.println(e);
}

%>
