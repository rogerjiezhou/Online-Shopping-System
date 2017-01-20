<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>wish list</title>
</head>
<body>


<jsp:useBean id="myList" scope="session" class="com.demo.model.WishListBean"></jsp:useBean>
<jsp:useBean id="wishListDAO" class="com.demo.dao.WishListDAO"></jsp:useBean>
<%
	
	int productID = Integer.parseInt(request.getParameter("productID"));
	int index = Integer.parseInt(request.getParameter("index"));
	wishListDAO.removeWishList(productID, (String)session.getAttribute("email"));
	myList.removeProduct(index);
	response.sendRedirect("wishList.jsp");

%>

</body>
</html>