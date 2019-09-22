<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Confirmation</title>
</head>
<body>
<h3>Registered Successfully!!!</h3>
<br>
${name1} ${name2}
<br>
<br>
<br>
<%String pathWebcontent=request.getContextPath();%>
<a href="<%=pathWebcontent%>/">LOGIN</a>
</body>
</html>