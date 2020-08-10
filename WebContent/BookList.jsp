
<%@ include file="header.jsp"%>
<%
List<Book> books = Book.getAllBooks();
request.setAttribute("books", books);

%>
<div class="container">
	<h2> </h2>
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
	</div>
<%@ include file="footer.jsp"%>