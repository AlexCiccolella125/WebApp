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
    pageEncoding="ISO-8859-1"
    import = "edu.fau.otoledo.week11.model.*"
    import = "edu.fau.otoledo.week11.util.*"
    import = "java.util.List"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	a {
		text-decoration: none;
		
	}
	label {
		display: inline-block;
		width: 100px;
	}
	div {
		padding:5px;
	}	
	
	ul {
	  list-style-type: none;
	  margin: 0;
	  padding: 0;
	  overflow: hidden;
	  background-color: #333;
	}
	
	li {
	  float: left;
	}
	
	li a {
	  display: block;
	  color: white;
	  text-align: center;
	  padding: 14px 16px;
	  text-decoration: none;
	}
	
	li a:hover:not(.active) {
	  background-color: #111;
	}
	
	.active {
	  background-color: #4CAF50;
}
</style>
</head>
<body>
	<%
		List<Employee> empList = DBUtil.getAllEmp();
		List<Department> deptList = DBUtil.getAllDep();
	%>
		<ul>
	  		<li><a href="Home.jsp">Home</a></li>
			<li style="float:right"><a class="active" href="#about">Logout</a></li>
		  	<li style="float:right"><a class="active" href="#about">Username</a></li>
		</ul>
		<table>
			<tr>
				<th>ID</th><th>Full Name</th><th>Salary</th><th>department</th>
			</tr>
			<%
				for (int index=0; index < empList.size(); index++){ 
				%>
				<tr>
					<td><%=empList.get(index).getId()%></td>
					<td><%=empList.get(index).getFirstName() + " " + empList.get(index).getLastName()%></td>
					<td><%=empList.get(index).getSalary() %></td>
					<%
					String deptName = null;
					for (Department d : deptList) {
						if (d.getId()== empList.get(index).getDeptId()){
							deptName = d.getName();
							break;
						}
						else {
							deptName = "Dept was not defined";
						}
					}
					%>
					<td><%=deptName %>
				</tr>	
				<% }
			%>
		</table>


</body>
<body>
<!-- HERE WE ARE INVALIDATE THE SESSION, SO THAT NO VALUES WILL BE PRESENT IN SESSION -->
<% session.invalidate(); %> 
<jsp:forward page="index.jsp"/>
</body>
</html>