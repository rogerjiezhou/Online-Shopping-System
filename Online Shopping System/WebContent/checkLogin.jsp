<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>

	
<jsp:useBean id="customer" class="com.demo.model.CustomerBean" />

<jsp:setProperty name="customer" property="*" />

<jsp:useBean id="obj" class="com.demo.dao.CustomerDAO" />

<jsp:include page="login.jsp"></jsp:include>
<%
	String username = obj.loginValidate(customer);
	
	if(username.equals("")){
		out.println("<h4 style=\"color:red;text-align:center\">Wrong email or password");		
	}else{
		session.setAttribute("username", username);
		session.setAttribute("email", customer.getEmail());
		session.setAttribute("login",true);
		if(session.getAttribute("tempListItem") != null){
			response.sendRedirect("wishList.jsp");	
		}else
			response.sendRedirect("index.jsp");	
	}
		
%>
	

	
</body>
</html>