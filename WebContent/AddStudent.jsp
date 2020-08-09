<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container pt-4">
	<div class="row">
		<div class="col-sm-12">

			<form action="SaveStudent.jsp">
				<h3>Add Student Form</h3>
				Name:<input type="text" name="name" /><br> 
				Grade: <select	name="grade">

				<option value="A">A</option>
				<option value="B">B</option>
				<option value="C">C</option>
				<option value="D">D</option>
				<option value="E">E</option>
				</select> <br> 
				
				Address:<input type="text" name="address" /><br> 
				Phone : <input type="text" name="phone" /><br>
				 <input type="submit" value="Save" />
			</form>
		</div>
	</div>
</div>


<%@ include file="footer.jsp"%>