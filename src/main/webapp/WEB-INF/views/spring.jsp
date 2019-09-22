<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring Assessment</title>
</head>
<body>
<h2>Spring Assessment</h2>
<hr>
<form:form action="evaluate/spring/test"  modelAttribute="examModel" method="POST" >
<h4>Question 1: What is spring?</h4>
<form:radiobutton path="ans1" id="Q1-Opt1" name="Question1" value="J2EE App Server" label="J2EE App Server"/><br>
<form:radiobutton path="ans1" id="Q1-Opt2" name="Question1" value="J2EE App Development Framework" label="J2EE App Development Framework"/><br>
<form:radiobutton path="ans1" id="Q1-Opt3" name="Question1" value="Configuration Management Tool" label="Configuration Management Tool"/><br>
<form:radiobutton path="ans1" id="Q1-Opt4" name="Question1" value="Build Tool" label="Build Tool"/><br>
<br>
<h4>Question 2: What is the full form of IOC?</h4>
<form:radiobutton path="ans2" id="Q2-Opt1" name="Question2" value="Inversion Of Control" label="Inversion Of Control"/><br>
<form:radiobutton path="ans2" id="Q2-Opt2" name="Question2" value="Interjection of Control" label="Interjection of Control"/><br>
<form:radiobutton path="ans2" id="Q2-Opt3" name="Question2" value="Internal Object Control" label="Internal Object Control"/><br>
<form:radiobutton path="ans2" id="Q2-Opt4" name="Question2" value="In-built Object Control" label="In-built Object Control"/><br>
<br>
<h4>Question 3: What is the full form of AOP?</h4>
<form:radiobutton path="ans3" id="Q3-Opt1" name="Question3" value="Anticipation of Properties" label="Anticipation of Properties"/><br>
<form:radiobutton path="ans3" id="Q3-Opt2" name="Question3" value="Aspect Oriented Programming" label="Aspect Oriented Programming"/><br>
<form:radiobutton path="ans3" id="Q3-Opt3" name="Question3" value="Associated Object Programming" label="Associated Object Programming"/><br>
<form:radiobutton path="ans3" id="Q3-Opt4" name="Question3" value="Anti Object Programming" label="Anti Object Programming"/><br>
<br>
<h4>Question 4: Which of the below is a spring container?</h4>
<form:radiobutton path="ans4" id="Q4-Opt1" name="Question4" value="View Resolver" label="View Resolver"/><br>
<form:radiobutton path="ans4" id="Q4-Opt2" name="Question4" value="Application Context" label="Application Context"/><br>
<form:radiobutton path="ans4" id="Q4-Opt3" name="Question4" value="Handler Mapping" label="Handler Mapping"/><br>
<form:radiobutton path="ans4" id="Q4-Opt4" name="Question4" value="Dispatcher Servlet" label="Dispatcher Servlet"/><br>
<br>
<h4>Question 5: Which is Spring's front Controller Implementation?</h4>
<form:radiobutton path="ans5" id="Q5-Opt1" name="Question5" value="Bean Factory" label="Bean Factory"/><br>
<form:radiobutton path="ans5" id="Q5-Opt2" name="Question5" value="Class Path Application Context" label="Class Path Application Context"/><br>
<form:radiobutton path="ans5" id="Q5-Opt3" name="Question5" value="Application Context" label="Application Context"/><br>
<form:radiobutton path="ans5" id="Q5-Opt4" name="Question5" value="Dispatcher Servlet" label="Dispatcher Servlet"/><br>
<br>
<input type="submit" id="submitspring" value="Submit">
</form:form>
</body>
</html>