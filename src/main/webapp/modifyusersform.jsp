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
<h1>Please enter the following information to make an account</h1>
	<form action="">
		First Name:<input type="text" value=""><br> 
		Last Name:<input type="text" value=""> <br> 
		Email:<input type="text" value=""><br> 
		Password:<input type="text" value=""> <br> 
		Phone:<input type="text" value=""><br> 
	</form>
	<input type="button" value="submit">
	<input type="button" value="delete">
	
	<form action = Upload.jsp?UploadType=ModifyUser" method = "POST" target = "_blank">
	<table id=userTable>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Last name</th>
			<th>Email</th>
			<th>Password</th>
			<th>Phone</th>
			<th>AdminStatus</th>
		</tr>
	<%
	DBUtil util = new DBUtil();
	List<User> userList = util.getAllUsers();
	for (int index=0; index < userList.size(); index++){ 
		String AdminStatus = null;
	if(userList.get(index).getAdminStatus()){
		AdminStatus = "checked = checked";
	}
	%>
		<tr>
			<td><%=userList.get(index).getUserId()%></td> 
			<td><%=userList.get(index).getFirstName()%></td>
			<td><%=userList.get(index).getLastName()%></td>
			<td><%=userList.get(index).getEmail()%></td>
			<td><%=userList.get(index).getPassword()%></td>
			<td><%=userList.get(index).getPhone()%></td>
			<td><%=userList.get(index).getAdminStatus()%></td>
			<td> <input type = "checkbox" name = "AdminStatus" <%=AdminStatus %> /> AdminStatus<td>
		    <td> <input type = "submit" value = "Delete" /></td>
		    <td> <input type = "submit" value = "Update" /></td>
			<%}%>
		</tr>
		</table>
		</form>
		
</body>
</html>