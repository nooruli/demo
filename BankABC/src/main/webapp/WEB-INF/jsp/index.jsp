<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ABC Bank</title>
<style type="text/css">
.loginlink{
color:blue;
font-weight: bold;
margin-left: 80%;
margin-top:-10%;
border: 1px solid white;
}
</style>

<script>

</script>
</head>
<body style="background-color: orange;">
<c:if test="${x=='1'} ">
<p style="color:red;">Invalid login</p>
</c:if>
<h1 style="color: white;font-weight: bold;">Welcome To ABC Bank </h1>
<h2 style="color: white;font-weight: bold;">The Official site for all your banking needs!</h2>
<div class="loginlink">
<a href="register">New Account</a>
<hr>
<a href="login">Login</a>
</div>
</body>
</html>