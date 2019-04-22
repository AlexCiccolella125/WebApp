<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="edu.fau.group3.util.DBUtil"
	import="edu.fau.group3.model.User" 
	import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String UpdateType = request.getParameter("UpdateType");
DBUtil util = new DBUtil();

if(UpdateType.equals("User")){
	String Email = request.getParameter("Email");
	String FirstName = request.getParameter("FirstName");
	String LastName = request.getParameter("LastName");
	String Password = request.getParameter("Password");
	Long Phone = Long.parseLong(request.getParameter("Phone"));
	boolean AdminStatus = true; //Boolean.parseBoolean(request.getParameter("AdminStatus"));
	int userId = util.getUserByEmail(Email).getUserId();
	User user = new User(userId, FirstName, LastName, Email, Password, AdminStatus, Phone);
	if(util.updateUser(user)){
		response.sendRedirect("admin.jsp?CreationSuccess=true");//UserAdded is true, redirect with success flag
	}
	else{
		response.sendRedirect("admin.jsp?CreationSuccess=false");//UserAdded False, redirect with error flag
	}
}

if(UpdateType.equals("Collection")){
//to be completed
}
if(UpdateType.equals("Product")){

//to be completed
}

//the delete page needs to be added also


%>
</body>
</html>
