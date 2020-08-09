
<%@ include file="header.jsp"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.best.library.Category"%>


<%
	List<Category> cats = Category.getAllCategories();
request.setAttribute("cats", cats);
%>

<div class="container pt-4">
	<div class="row">
		<div class="col-sm-12">
		
			<form action="SaveBook.jsp">
				<h3>Add Book Form</h3>
				Names:<input type="text" name="name" /><br> 
				Author:<input
					type="text" name="author" /><br> 
					Category: <select name="category">
					<c:forEach items="${cats}" var="cat">

						<option value="${cat.getIdString()}">${cat.category_name}</option>

					</c:forEach>
				</select> <br> Price:<input type="text" name="price" /><br> ISBN:
				<input type="text" name="isbn" /><br> <input type="submit"
					value="Save" />
			</form>
		</div>
	</div>
</div>


<%@ include file="footer.jsp"%>
