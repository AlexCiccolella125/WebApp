<%
// AUTHENTICATION
Integer uid = (Integer)session.getAttribute("sessionID");
if (uid == null) {
%>
<!-- <jsp:forward page="index.jsp"/> -->
<% }//END AUTHENTICATION %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "edu.fau.group3.model.User"
    import = "edu.fau.group3.util.DBUtil"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%-- calling the css --%>
<link rel="stylesheet" href="Login.css">
</head>

<body>
	<%
	out.print("<P>" + session.getId() +"<P>");
	User user = DBUtil.getUserById(uid);
	out.print(uid);
	%>
</body>
</html>