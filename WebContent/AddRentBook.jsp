<%@ include file="header.jsp"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.best.library.*"%>

<%
	List<Book> books = Book.getAllBooks();
request.setAttribute("books", books);
%>

<div class="container pt-4">
	<div class="row">
		<div class="col-sm-12">
		
			<form action=".jsp">
				<h3>Rent Book Form</h3>
				Date <input type="text" name="name" /><br>
				Book
					 <select name="book">
					<c:forEach items="${books}" var="book">

						<option value="${book.getIdAsString()}">${book.name}</option>

					</c:forEach>
				</select> <br>
				
				<input type="text" name="isbn" /><br> <input type="submit"
					value="Save" />
			</form>
		</div>
	</div>
</div>
<%@ include file="footer.jsp"%>