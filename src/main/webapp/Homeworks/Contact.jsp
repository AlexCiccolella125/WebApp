<%
// AUTHENTICATION
Integer uid = (Integer)session.getAttribute("sessionID");
if (uid == null) {
%>
<jsp:forward page="index.jsp"/>
<%
}// END AUTHENTICATION

User user = DBUtil.getUserById(uid);
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us</title>
</head>
<body>
	<h1>Raquel Cruz</h1>
	<h4>Jack of all trades, master of none.</h4>
	<h3>Birthday: December 8, 1997</h3>
	<h3>Birthplace: Queens, New York</h3>
	<h3>Expected Graduation: Fall 2019</h3>
	<h3>Current Occupation: Full time student</h3>
	
	<h4>Eclipse is hard to learn.</h4>
	
	<a href= "FAUAdminHW6.html">Back to Menu</a>
</body>
</html>