<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Employee profile</title>
</head>
<body>
<%@include file="employeedashbord.jsp" %>

<%
int empid=Integer.parseInt(session.getAttribute("empid").toString());

%>
<h1>hey user your employee id is <%= empid%></h1>
</body>
</html>