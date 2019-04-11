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
<title>Insert title here</title>
</head>
<body>
	<form action="validate.jsp" method ="post">
	    Username: <input type="text" name="username">
	    <br>
	    Password: <input type="password" name="password">
	    <br><br>
	    <input type="submit" value="Login">
	</form>

</body>
<body>
<!-- HERE WE ARE INVALIDATE THE SESSION, SO THAT NO VALUES WILL BE PRESENT IN SESSION -->
<% session.invalidate(); %> 
<jsp:forward page="index.jsp"/>
</body>

</html>