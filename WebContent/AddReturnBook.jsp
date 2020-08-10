<%@ include file="header.jsp"%>


<%
	List<Book> books = Book.getAllBooks();
request.setAttribute("books", books);
List<Student> students = Student.getAllStudent();
request.setAttribute("students", students);


%>

<div class="container pt-4">
	<div class="row">
		<div class="col-sm-12">
		
			<form action="SaveReturnBook.jsp">
			
				<h3>RETURN BOOK FORM</h3>
				Books
					 <select name="book" class="form-control">
					<c:forEach items="${books}" var="book">

						<option value="${book.id}">${book.name}</option>

					</c:forEach>
					
				</select> <br>
 				<select name="student" class="form-control">
					<c:forEach items="${students}" var="student">

						<option value="${student.id}">${student.name}</option>

					</c:forEach>
					
				</select> <br>				 
				 Return Date <input type="text" name="return_date" class="form-control" /><br>
				 
				
				 <input type="submit"
					value="Save" class="btn btn-primary" />
					
			</form>
		</div>
	</div>
</div>
<%@ include file="footer.jsp"%>