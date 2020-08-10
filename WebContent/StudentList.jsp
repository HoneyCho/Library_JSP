	<%@ include file="header.jsp"%>
	<%
		List<Student> students = Student.getAllStudent();
	request.setAttribute("students", students);
	%>
	<div class="container">
	<h2> </h2>
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
	</div>
</body>
</html>