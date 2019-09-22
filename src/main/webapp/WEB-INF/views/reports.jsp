<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Reports</title>
</head>
<body>
<h2 id="msg">Select Reports</h2>
<br>
<%String pathWebcontent=request.getContextPath();%>
<a href="<%=pathWebcontent%>/users/all">View list of all candidates</a>
<br>
<a href="<%=pathWebcontent%>/tests/all">View list of all tests taken</a>
<br>
<br>
<br>
<a href="<%=pathWebcontent%>/">Logout</a>
</body>
</html>