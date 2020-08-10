<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.best.library.*"%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%
	try {

	ResultSet rs;
	List<Rent> rents = Rent.getAllRents();
	request.setAttribute("rents", rents);
	int return_status=0;
	int book_id = Integer.parseInt((request.getParameter("book")));
	int student_id= Integer.parseInt((request.getParameter("student")));
	String rent_date = request.getParameter("rent_date");
	System.out.print(student_id+ rent_date + book_id);
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "honey", "root");

	String sql = "insert into Rent(id,book_id,student_id,rent_date) value(null,?,?,?)";
	System.out.println("Inserting is successful student!");

	try {

		java.sql.PreparedStatement pstmt = con.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

		pstmt.setInt(1, book_id);
		pstmt.setInt(2,student_id);
		pstmt.setString(3, rent_date);
		//pstmt.setInt(4,return_status);
	

		int status = pstmt.executeUpdate();
		
	System.out.println(status);
	

	} catch (SQLException e) {
		System.out.println(e);

		e.printStackTrace();
	}

	String host = request.getServerName().toString();
	String port = String.valueOf(request.getServerPort());
	String redirectURL = "http://" + host + ":" + port + "/Library/RentList.jsp";
	response.sendRedirect(redirectURL);

} catch (Exception e) {
	System.out.println(e);
}

%>
