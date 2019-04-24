<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="edu.fau.group3.util.DBUtil"
	import="edu.fau.group3.model.User" 
	import="java.util.List"
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="Restricted.jsp" />
	<form action="Update.jsp?UpdateType=User" method="post">
	
		
	<%

	String Email = request.getParameter("UserEmail");
	
	User user = DBUtil.getUserByEmail(Email);
	if(DBUtil.checkIfEmailExists(Email) == false){
		response.sendRedirect("admin.jsp?DeleteSuccess=false");
	}else{
	String AdminStatus = null;
	int ID = user.getUserId();
	if(user.getAdminStatus()){
		AdminStatus = "checked = true";
	}
	%>
		

	 Email<input name="Email" type="Email" value="<%=user.getEmail()%>"> 
	 <br>Name<input name="FirstName" type="text" value="<%=user.getFirstName()%>"> 
	 <br>Last name <input name="LastName" type="text" value="<%=user.getLastName()%>"> 
	 <br>Password<input name="Password" type="password" value="<%=user.getPassword()%>"> 
	 <br>Phone<input name="Phone" type="tel" value="<%=user.getPhone()%>"> 
	 <br><input name="AdminStatus" type = "checkbox" value="true" <%=AdminStatus %> /> AdminStatus 
     <br><input type="submit" value="Update">

</form>
<form action="Delete.jsp?Type=User&Email=<%=Email%>" method="post">
	<button type="submit"> Delete User</button>
</form>
<%} %>
</body>
</html>
