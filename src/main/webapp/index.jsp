<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="edu.fau.group3.util.DBUtil"
	import="edu.fau.group3.model.User" import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
<%-- calling the css --%>
<link rel="stylesheet" href="Login.css">

</head>
<body>
	<jsp:include page="Banner.jsp" />
<fieldset id= "LoginPage">
	<center><h1>Welcome to Pillowtalk!</h1>

	<h3>The online shop where you can find all your pillow and
		mattress needs!</h3></center>
</fieldset>
</body>
</html>