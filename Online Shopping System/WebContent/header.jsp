<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>navbar</title>
</head>
<body>
<% 
	boolean login = false;
	String username = "";
	
	if((Boolean)session.getAttribute("login")){
		login = true;
		if(session.getAttribute("username") != null){			
			username = (String)session.getAttribute("username");}
	}

%>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#" style="margin-left:20px">Online Shopping System</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="index.jsp">Home</a></li>
      <li><a href="displayCart.jsp">Cart</a></li>
      <%
      	if(login){
      		out.println("<li><a href=\"wishList.jsp\">Wish List</a></li>" +
            			"<li><a href=\"logout.jsp\">Log out</a></li>");
      	}else {
      		out.println("<li><a href=\"login.jsp\">Log in</a></li>");
      	}
      
      %>
    </ul>
    <p style="margin-right:40px" class="navbar-text navbar-right">Welcome <%= username %></p>
  </div>
</nav>
</body>
</html>