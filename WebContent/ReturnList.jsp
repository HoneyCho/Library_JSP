<%@ include file="header.jsp"%>

<%
	ResultSet rs;
List<Rent> rents = Rent.getAllReturn();
request.setAttribute("rents", rents);

%>

<div class="container">
	<h2></h2>
	<form action="AddRentBook.jsp">
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th>No</th>
					<th>Book Name</th>
					<th>Student Name</th>
					<th>Return Date</th>

				</tr>
			</thead>

			<c:forEach items="${rents}" var="rent">
				<tr>

					<td>${rent.id}</td>
					<td>${rent.book_name}</td>
					<td>${rent.student_name}</td>
					<td>${rent.return_date}</td>
			
			</c:forEach>

		</table>
		<input type="submit" value="Save" class="btn btn-primary" />
	</form>
</div>

<%@ include file="footer.jsp"%>