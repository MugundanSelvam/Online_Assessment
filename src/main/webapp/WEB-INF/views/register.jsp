<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
</head>
<body>
<form:form action="registration/do" modelAttribute="newUserModel" method="POST">
<h3>Registration</h3>
<br>
<br>
First Name:<form:input id="firstname" pattern="^[a-zA-Z]+$" required="required" path="FirstName" type="text"/>
<br>
Last Name:<form:input id="lastname" pattern="^[a-zA-Z]+$" required="required" path="LastName" type="text"/>
<br>
Email ID:<form:input id="email" required="required" path="mailId" type="email"/>
<br>
Password:<form:input id="password"  pattern="^.{8,}$" required="required" path="pw" type="password"/>
<br>
<br>
<input id="register" type="submit" value="REGISTER">
</form:form>
</body>
</html>