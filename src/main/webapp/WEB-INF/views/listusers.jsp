<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All User Details</title>
<style>
table, th, td {
  border: 1px solid black;
}
</style>
</head>
<body>
<h3>List of All Users</h3>

<table>
<tr>
<th>First Name</th>
<th>Last Name</th>
<th>Email ID</th>
<th>User Type</th>
</tr>

<c:forEach var="listValue" items="${list}"  varStatus="loop">
	<tr>
	<td><span id="firstName${loop.count}">${listValue.getFirstName()}</span></td>
	<td><span id="lastName${loop.count}">${listValue.getLastName()}</span></td>
	<td><span id="email${loop.count}">${listValue.getMailId()}</span></td>
	<td><span id="userType${loop.count}">${listValue.getType()}</span></td>
	</tr>			
</c:forEach>



</table>

</body>
</html>