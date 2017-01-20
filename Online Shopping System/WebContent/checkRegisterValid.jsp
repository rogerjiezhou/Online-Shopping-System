<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<body>

	
<jsp:useBean id="customer" class="com.demo.model.CustomerBean" />

<jsp:setProperty name="customer" property="*" />

<jsp:useBean id="obj" class="com.demo.dao.CustomerDAO" />

<jsp:include page="register.jsp"></jsp:include>
<%
	int validation = obj.regValidate(customer);
	if(validation == 1){
		session.setAttribute("username", customer.getUsername());
		session.setAttribute("login",true);
		response.sendRedirect("index.jsp");
	}else
		out.println("<h3 style=\"color:red;text-align:center\">This email is already registered</h3>");
	
	
%>
	

	
</body>
</html>