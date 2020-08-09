<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.best.library.Student"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student List</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<%
		List<Student> students = Student.getAllStudent();
	request.setAttribute("students", students);
	%>
	<form action="AddStudent.jsp">
		<table class="table">
			<thead class="thead-dark">
			
				<tr>
					<th>No</th>
					<th>Name</th>
					<th>Grade</th>
					<th>Address</th>
					<th>Phone</th>
				</tr>

			</thead>

	<c:forEach items="${students}" var="student">
				<tr>
					<td>${student.getIdString()}</td>
					<td>${student.name}</td>
					<td>${student.grade}</td>
					<td>${student.address}</td>
					<td>${student.phone}
				</tr>
			</c:forEach>
		</table>
		<input type="submit" value="Add Student" />
	</form>
</body>
</html>