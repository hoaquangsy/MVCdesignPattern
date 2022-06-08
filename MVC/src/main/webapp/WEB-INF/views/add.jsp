<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container mt-5">
		<form:form action="/product/add" method="post" modelAttribute="Product" >
			<div class="mb-3 row">
				<label for="inputName" class="col-sm-2 col-form-label">Name</label>
				<div class="col-sm-8">
					<form:input path="name" type="text" class="form-control"/>
				</div>
			</div>
			<div class="mb-3 row">
				<label for="inputColor" class="col-sm-2 col-form-label">Price</label>
				<div class="col-sm-8">
					<form:input path="price" type="text" class="form-control"/>
				</div>
			</div>
			<div class="mb-3 row">
				<label for="inputScreen" class="col-sm-2 col-form-label">Quantity</label>
				<div class="col-sm-8">
					<form:input path="quantity" type="text" class="form-control"/>
				</div>
			</div>
		
			<div class="mb-3 row ">
			  <div class="col-sm-2"></div>
			  <div class="col-sm-8 mt-3">
			   <button class="btn btn-primary">Save</button>
			  </div>
			</div>
			

		</form:form>
	</div>

</body>
</html>