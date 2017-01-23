<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.demo.model.WishListBean" %>
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
	
	<jsp:useBean id="product" class="com.demo.model.ProductBean" />	
	<jsp:setProperty name="product" property="*" />
	
	<jsp:useBean id="wishListDAO" class="com.demo.dao.WishListDAO"></jsp:useBean>
	<jsp:useBean id="myList" scope="session" class="com.demo.model.WishListBean"></jsp:useBean>

	<%
		if((Boolean)session.getAttribute("login")){	
			if(!myList.contains(product)){
				myList.addProduct(product);
				wishListDAO.insertWishList(product, (String)session.getAttribute("email"));				
			}
			response.sendRedirect("wishList.jsp");
		}else{
			session.setAttribute("tempListItem", product);
			response.sendRedirect("login.jsp");
		}
	%>


</body>
</html>