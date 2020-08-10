<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="header.jsp"%>
<div class="container pt-4">
	<div class="row">
		<div class="col-sm-12">

			<form action="SaveStudent.jsp">
				<h3>ADD STUDENT FORM</h3>
				Name:<input type="text" name="name"  class="form-control"/><br> 
				Grade:     <select class="form-control" name="grade">

				<option value="A">A</option>
				<option value="B">B</option>
				<option value="C">C</option>
				<option value="D">D</option>
				<option value="E">E</option>
				</select> <br> 
				
				Address:<input type="text" name="address"  class="form-control"/><br> 
				Phone : <input type="text" name="phone"  class="form-control"/><br>
				 <input type="submit" value="Save" class="btn btn-primary" />
			</form>
		</div>
	</div>
</div>


<%@ include file="footer.jsp"%>