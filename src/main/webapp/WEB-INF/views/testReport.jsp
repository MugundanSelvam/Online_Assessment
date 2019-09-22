<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Tests Details</title>
<style>
table, th, td {
  border: 1px solid black;
}
</style>
</head>
<body>
<h3>List of Candidates and Tests</h3>

<table>
<tr>
<th>Test Date</th>
<th>Assessment</th>
<th>Test Marks</th>
<th>Email ID</th>
<th>Total Marks</th>
<th>Result</th>
</tr>
<c:forEach var="listValue" items="${list1}" varStatus="loop">
	<tr>
	<td><span id="testDate${loop.count}">${listValue.getTestDate()}</span></td>
	<td><span id="assessment${loop.count}">${listValue.getAssessment()}</span></td>
	<td><span id="marks${loop.count}">${listValue.getTestMark()}</span></td>
	<td><span id="email${loop.count}">${listValue.getMail()}</span></td>
	<td><span id="totalMarks${loop.count}">${listValue.getTotal()}</span></td>
	<td><span id="result${loop.count}">${listValue.getResult()}</span></td>
	</tr>			
</c:forEach>
</table>

</body>
</html>