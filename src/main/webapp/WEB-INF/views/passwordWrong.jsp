<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Password Error Page</title>
</head>
<body>
<h1 id="msg" >Sorry your Password is Wrong !!! Login again !!!</h1>
<br>
<%String pathWebcontent=request.getContextPath();%>
<a href="<%=pathWebcontent%>/">login again</a>
</body>
</html>