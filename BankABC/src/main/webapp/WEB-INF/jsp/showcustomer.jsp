<%@ page languhage="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Data</title>
</head>
<body>
<table border="1" style="border-collapse:collapse">
<tr><th>First Name</th><th>Last Name</th><th>Acc Type</th><th>Acc No</th><th>Balance</th></tr>

<c:forEach var="listpersons" items="${list}">
<tr>
<td>
<input type="hidden" value=${listpersons.id}>
<c:out value="${listpersons.firstName}"></c:out></td>
<td><c:out value="${listpersons.lastName}"></c:out></td>
<td><c:out value="${listpersons.accType}"></c:out></td>
<td><c:out value="${listpersons.accNO}"></c:out></td>
<td><c:out value="${listpersons.balance}"></c:out></td>
<td><a href="register?id=${listpersons.id}">edit</a></td>
</tr>
</c:forEach>
</table>
</body>
</html>