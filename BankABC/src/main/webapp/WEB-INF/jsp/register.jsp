<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<style type="text/css">
.outerbox {
	width: 50%;
	margin: 0vh 30% 20% 30%;
	height: 88vh;
	border: thin;
	background-color: #e6e6e6;
	padding: 0.5%;
}
.radio{
margin-top:-3%;
margin-left:4.8%;
padding:4%;
size:20%;
width: 93.3%;
font-size: large;
font-weight: bold;

}
.signupbox {
	background-color: #3399ff;
	height: 6%;

	font-size: 28px;
	font-weight: bold;
	color: white;
	text-align: center;
	padding: 5%;
	padding-left: 2%;
	width:97.3%;
	margin-left:-2.2%;
}

.greybox {
	background-color: #d9d9d9;
	width: 96%;
	height: 86vh;
	border: thin;
	padding:2%;
	padding-top:0%;
}
.username{
margin-top:1.3%;
padding:4%;
size:20%;
width: 93%;
font-size: large;
font-weight: bold;

}
.email{
margin-top:-3%;
padding:4%;
size:20%;
width: 93%;
font-size: large;
font-weight: bold;

}
.btn{
background-color: #3399ff;
font-weight: bold;
color:white;
margin-top:-3%;
margin-left:3.8%;
padding:4%;
size:20%;
width: 95%;
font-size: large;
}


</style>
</head>
<body style="background-color: lightblue">
<h5 style="color: green;">Welcome Admin</h5><br>
<a href="showcustomer">all account records</a><br>
<a href="upadte">Update</a>

<form:form action="savemodule" method="post" commandName="loginattribute">
	<div class="outerbox">
		<div class="greybox">
			<div class="signupbox">New Account Details</div>
			<form:hidden path="id"></form:hidden> 
			
			<div class="username"><form:input path="firstName" class="username" type="text" placeholder="first name"></form:input></div>
		    <div class="email"><form:input path="lastName" class="email"  type="text" placeholder="Last Name"></form:input></div>
		    <div class="email"><form:input path="accNO" class="email" type="text" placeholder="Account Number"></form:input></div>
		    <div class="email"><form:input path="balance" class="email" type="text" placeholder="Balance"></form:input></div>
			<form:select class="radio" path="accType">
			<form:option value="saving"></form:option>
			<form:option value="current"></form:option>
			<form:option value="check"></form:option>
			</form:select>
			<br>
		    <input type="submit" style="margin-top:5%;" class="btn" value="Register" />
		    </div>
		</div>
	</form:form>>
</body>
</html>