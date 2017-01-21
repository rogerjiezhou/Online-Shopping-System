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
	<jsp:useBean id="product" class="com.demo.model.ProductBean" />	
	
	<jsp:setProperty name="product" property="*" />
	<jsp:useBean id="myList" scope="session" class="com.demo.model.WishListBean"></jsp:useBean>
	<jsp:useBean id="wishListDAO" class="com.demo.dao.WishListDAO"></jsp:useBean>
	
	<%
		
		int index = Integer.parseInt(request.getParameter("index"));
	
		int productID = Integer.parseInt(request.getParameter("productID"));
		
		ShoppingCartBean myCart = (ShoppingCartBean)session.getAttribute("myCart");
		
		if(myCart == null) {
			myCart = new ShoppingCartBean();
			session.setAttribute("myCart", myCart);
		}
		
		myCart.addProduct(product);
		
		myList.removeProduct(index);
		
		wishListDAO.removeWishList(productID, (String)session.getAttribute("email"));
		
		response.sendRedirect("wishList.jsp");
	%>
</body>
</html>