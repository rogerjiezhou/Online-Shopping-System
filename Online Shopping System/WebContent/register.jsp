<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Register</title>
</head>
<body>

	<div class="container">

      <form style="margin:0 auto; width:320px; margin-top:105px" action="checkRegisterValid.jsp" method="post">
        <h2 class="form-signin-heading">Register new account</h2></br>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="email" name="email" class="form-control" placeholder="Email address" required autofocus>
        </br>
        <label for="inputUsername" class="sr-only">Username</label>
        <input type="text" name="username" class="form-control" placeholder="User name" required>
        </br>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" name="pwd" class="form-control" placeholder="Password" required>
		</br>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Create your account</button>

      </form>

    </div> <!-- /container -->
</body>
</html>