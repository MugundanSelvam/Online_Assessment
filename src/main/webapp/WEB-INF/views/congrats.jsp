<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success Page</title>
</head>
<body>
<h1 id="msg">Congratulations !!! You have passed !!!</h1>
<br>
<%String pathWebcontent=request.getContextPath();%>
<a href="<%=pathWebcontent%>/">Exit</a>
</body>
</html>