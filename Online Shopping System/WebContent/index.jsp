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
	<%
		if(session.isNew()) {
			session.setAttribute("login", false);
		}
	%>
	<jsp:include page="header.html" />
	<div style="padding:20px 50px 20px 50px">
	<h2>Welcome</h2>
	<div id="productList">
		<table id="productTable" class="table table-bordered table-striped">
			<tr><th>Product</th><th>Price</th><th style="width:15%"></th><th style="width:15%"></th></tr>
		<jsp:useBean id="obj" class="com.demo.dao.ProductDAO" />
		<%
			out.print(obj.listProduct());
		%>
		</table>
	</div>
	</div>
</body>
</html>