<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.demo.model.ShoppingCartBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		ShoppingCartBean myCart = (ShoppingCartBean)session.getAttribute("myCart");
		
		int index = Integer.parseInt(request.getParameter("index"));
		int orderQuantity = Integer.parseInt(request.getParameter("orderQuantity"));
		
		myCart.updateCart(index, orderQuantity);
		
		response.sendRedirect("displayCart.jsp");
	%>
</body>
</html>