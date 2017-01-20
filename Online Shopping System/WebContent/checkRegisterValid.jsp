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
		out.println("<h4 style=\"color:red;text-align:center\">This email is already registered</h4>");
		
	}else{
		session.setAttribute("username", customer.getUsername());
		session.setAttribute("email", customer.getEmail());
		session.setAttribute("login",true);
		int x = obj.insertCustomer(customer);
		response.sendRedirect("index.jsp");
	}
		
%>
	

	
</body>
</html>