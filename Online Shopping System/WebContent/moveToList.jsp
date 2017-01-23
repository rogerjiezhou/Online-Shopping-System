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
<jsp:setProperty name="product" property="productID" />
<jsp:setProperty name="product" property="productName" />
<jsp:setProperty name="product" property="productPrice" />
<jsp:useBean id="myList" scope="session" class="com.demo.model.WishListBean"></jsp:useBean>
<jsp:useBean id="wishListDAO" class="com.demo.dao.WishListDAO"></jsp:useBean>
<%
	int index = Integer.parseInt(request.getParameter("index"));
	
	ShoppingCartBean myCart = (ShoppingCartBean)session.getAttribute("myCart");
	
	myCart.removeProduct(index);
	
	if((Boolean)session.getAttribute("login")){	
		if(!myList.contains(product)){
			myList.addProduct(product);
			wishListDAO.insertWishList(product, (String)session.getAttribute("email"));				
		}
		response.sendRedirect("displayCart.jsp");
	}else {
		session.setAttribute("tempListItem", product);
		response.sendRedirect("login.jsp");
	}
	
%>

</body>
</html>