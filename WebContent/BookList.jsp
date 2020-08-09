<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.best.library.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.best.library.Book"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

	<h3>Book List</h3>
	<%
List<Book> books = Book.getAllBooks();
request.setAttribute("books", books);

%>
	<form action="AddBook.jsp">
		<table class="table">


			<thead class="thead-dark">
				<tr>
					<th>No</th>
					<th>Name</th>
					<th>Author</th>
					<th>Category</th>
					<th>Price</th>
					<th>ISBN</th>
				</tr>
			</thead>
			<c:forEach items="${books}" var="book">
				<tr>
					<td>${book.id}</td>
					<td>${book.name}</td>
					<td>${book.author}</td>
					<td>${book.category}</td>
					<td>${book.price}</td>
					<td>${book.isbn}</td>
				</tr>

			</c:forEach>
		</table>
		<input type="submit" value="Add Book" />
	</form>
</body>