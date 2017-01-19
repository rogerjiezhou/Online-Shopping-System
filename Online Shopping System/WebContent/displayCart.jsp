<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.demo.model.ShoppingCartBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Shopping Cart</title>
</head>
<body>
	<jsp:include page="header.html" />
	<h3>Your Shopping Cart</h3>
	<table id="cartTable" class="table table-bordered table-striped">
			<tr><th>Product</th><th>Price</th><th></th></tr>
			<%
				ShoppingCartBean myCart = (ShoppingCartBean)session.getAttribute("myCart");
				
				boolean empty = false;
				
				if(myCart == null || myCart.getMyCart().size() == 0)
					empty = true;
				else
					out.print(myCart.listCartTable());
			%>
	</table>
		<%
			if(empty){
				out.print("<h3>There is no item in your shopping cart...</h3>");
			}
		%>
</body>
</html>