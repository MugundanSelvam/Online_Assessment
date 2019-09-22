<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Failure Page</title>
</head>
<body>
<h1 id="msg">Sorry !!! Better Luck Next Time !!!</h1>
<br>
<%String pathWebcontent=request.getContextPath();%>
<a href="<%=pathWebcontent%>/">Exit</a>
</body>
</html>