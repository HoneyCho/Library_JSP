<%@ include file="header.jsp"%>

<%
	ResultSet rs;
List<Rent> rents = Rent.getAllRents();
request.setAttribute("rents", rents);
%>





<form action="AddRentBook.jsp">
	<table class="table">


		<thead class="thead-dark">
			<tr>
				<th>No</th>
				<th>Book Name</th>
				<th>Student Name</th>
				<th>Date</th>

			</tr>
		</thead>



		<c:forEach items="${rents}" var="rent">


			<tr>

				<td>${rent.student_name}</td>

			</tr>


		</c:forEach>

	</table>
	<input type="submit" value="Add Book" />
</form>

<%@ include file="footer.jsp"%>