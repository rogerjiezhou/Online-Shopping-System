<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.demo.model.WishListBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Wish List</title>
</head>
<body>

	<%
		if(!(Boolean)session.getAttribute("login"))
			response.sendRedirect("login.jsp");
	%>
	<jsp:include page="header.jsp" />
	<div style="padding:0px 50px 20px 50px">
	<h3>Your Wish List</h3>
	</br>
	<table id="cartTable" class="table table-bordered table-striped">
			<tr><th>Product</th><th>Price</th><th style="width:20%"></th><th style="width:25%"></th></tr>
	<jsp:useBean id="myList" scope="session" class="com.demo.model.WishListBean"></jsp:useBean>
	<jsp:useBean id="wishListDAO" class="com.demo.dao.WishListDAO"></jsp:useBean>
			<%
			
				out.println(myList.listTable());
				if(myList.getMyList().size() == 0){
					out.print("<h3>There is no item in your wish list...</h3>");
				}
			
			%>
	</table>
		
		
	<input type="button" class = "btn btn-info" value="Continue Shopping" onclick="location.href='index.jsp'">
	<input type="button" class = "btn btn-primary" value="Checkout" onclick="location.href='checkout.jsp'">
	
	</div>
</body>
</html>