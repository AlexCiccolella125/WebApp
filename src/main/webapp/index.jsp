<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    
    import = "edu.fau.group3.util.DBUtil"
    import = "edu.fau.group3.model.User"
    import = "java.util.List"
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	DBUtil db = new DBUtil();
	List<User> users = db.getAllUsers();
	for(int i = 0; i < users.size(); i++){
		out.print("<tr>");
		out.print("<td>" + users.get(i).getFirstName() + "</td>");
		out.print("</tr><br>");
	}

%>

/*	<form action="JSPFiles\validate.jsp" method ="post">
	    Username: <input type="text" name="username">
	    <br>
	    Password: <input type="password" name="password">
	    <br><br>
	    <input type="submit" value="Login">
	</form>
*/
</body>
</html>