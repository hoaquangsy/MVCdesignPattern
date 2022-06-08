<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lab56</title>
<link href="/css/bootstrap.min.css" rel="stylesheet">
</head>
<body >

<div class="card">
  <div class="card-header row">
   <div class="col-9">
    <h1> Featured</h1>
   </div>
   
  </div>
  <div class="card-body">
 
     <a href="/product/create" class="btn btn-primary">Add New SmartPhone</a>
   </div>
    <table class="table">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">price</th>
      <th scope="col">quantity</th>
      <th scope="col" colspan="2">    
      Actions  
      </th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="smartPhone" items="${products}">
      <tr>
      
      <td>${smartPhone.name }</td>  
      <td>${smartPhone.price }</td>
      <td>${smartPhone.quantity }</td>
   
      <td>
       <a href="delete/${smartPhone.id }" class="btn btn-danger">Delete</a>
     <a href="edit/${smartPhone.id }" class="btn btn-warning">Update</a>
      </td>
    </tr>
    </c:forEach>

  </tbody>
</table>


    
  </div>





	<script src="/js/jquery.min.js"></script>
	<script src="/js/popper.min.js"></script>
	<script src="/js/angular.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
</body>
</html>