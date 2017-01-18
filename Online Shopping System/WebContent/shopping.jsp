<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Online Shopping System</title>
</head>
<body>
	<nav class="navbar navbar-default">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <a class="navbar-brand" href="#">Online Shopping System</a>
	    </div>
	    <ul class="nav navbar-nav">
	      <li><a href="#">Home</a></li>
	      <li><a href="#">Cart</a></li>
	      <li><a href="#">Profile</a></li>
	      <li><a href="#">Orders</a></li>
	    </ul>
	  </div>
	</nav>
	<div id="productList">
		<table id="productTable" class="table table-bordered table-striped">
			<tr><th>Product</th><th>Price</th><th></th></tr>
		<jsp:useBean id="obj" class="com.demo.dao.ProductDAO" />
		<%
			out.print(obj.listProduct());
		%>
		</table>
	</div>
</body>
</html>