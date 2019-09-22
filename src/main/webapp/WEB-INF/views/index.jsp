<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Assessment - Home Page</title>
</head>
<body>
<h1>Welcome to Online Assessments</h1>
<br>
<h3>Login</h3>
<br>

<form:form action="login/do" modelAttribute="userModel" method="POST">
Email ID:<form:input id="email" required="required" path="mailId" type="email"/>
<br>
Password:<form:input id="password" required="required" path="pw" type="password"/>
<br>
<input type="submit" id="login" value="LOGIN">
</form:form>
<br>
<%String pathWebcontent=request.getContextPath();%>
New User? <a href="<%=pathWebcontent%>/register">Register Here</a>
</body>
</html>