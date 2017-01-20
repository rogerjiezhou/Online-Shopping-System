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
	<jsp:useBean id="myList" scope="session" class="com.demo.model.WishListBean"></jsp:useBean>
	<jsp:useBean id="wishListDAO" class="com.demo.dao.WishListDAO"></jsp:useBean>
	<%
		String username = "";
		
		if(session.isNew()) {
			session.setAttribute("login", false);
		}else{
			if((Boolean)session.getAttribute("login")){
				String email = "";
				if(session.getAttribute("email") != null){			
					email = (String)session.getAttribute("email");
					myList.setEmail(email);
					myList.setList(wishListDAO.getWishList(email));
					System.out.println("Loading in index");
				}
			}
			if(session.getAttribute("username") != null)
				username = (String)session.getAttribute("username");
		}
		
		
	%>
	<jsp:include page="header.jsp" />
	<div style="padding:0px 50px 20px 50px">
	<h3>Shopping Deck</h3>
	</br>
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