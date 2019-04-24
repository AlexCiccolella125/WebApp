<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import='edu.fau.group3.util.DBUtil'%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
	<!-- User must be logged in prior in the session to acces admin pages -->
	<%// AUTHENTICATION CODE
	Integer uid = (Integer)session.getAttribute("sessionID");
	DBUtil util = new DBUtil();
	if(util.getUserById(uid).getAdminStatus()){
		// do Nothing EI allow user to stay on this page
	}else{
		//user has not qualified as an admin and needs to be redirected to homepage
		response.sendRedirect("index.jsp");
	}
	%>
	
	
	
</body>
</html>