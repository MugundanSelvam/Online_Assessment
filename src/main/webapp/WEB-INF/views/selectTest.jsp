<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Tests</title>
</head>
<body>
<h3 id="msg">Select the Test</h3>
<%String pathWebcontent=request.getContextPath();%>
<br>
<a href="<%=pathWebcontent%>/springAssessment">Spring Assessment</a>
<br>
<a href="<%=pathWebcontent%>/hibernateAssessment">Hibernate Assessment</a>
<br>
<br>
<br>
<a href="<%=pathWebcontent%>/">Logout</a>
</body>
</html>