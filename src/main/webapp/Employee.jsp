<%@ 
	page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    
    import = "edu.fau.aciccolella2015.configuration.DBUtil"
    import = "edu.fau.aciccolella2015.configuration.Employee"
    import = "edu.fau.aciccolella2015.configuration.JDBCConfig"
    import = "java.util.List"
    import = "java.util.ArrayList"
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
/*
	DBUtil util = new DBUtil();
	String empid = request.getParameter("");
	Employee emp = util.getEmpById(empid);

if(emp != null){
		out.print("<h1>Employee information </h1>");
		out.print("Id: " + emp.getEmpId() + "<br>");
		out.print("Name: " + emp.getFirstname() + "<br>");
		out.print("Salary: " + emp.getSalary() + "<br>");
}
else{
	out.print("<h2>Employee not found</h2>");
}
*/

%>
	<h1>Employee Report</h1>
	<table id=t01>
		<tr>
			<th>Employee Id</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Salary</th>
			<th>DepartmentId</th>
	<%
	
		DBUtil db = new DBUtil();
		List<Employee> emp = db.getAllEmployees();
	
		for(int i = 0; i< emp.size(); i++){
			out.print("<tr>");
			out.print("<td>" + emp.get(i).getEmpId() + "</td>");
			out.print("<td>" + emp.get(i).getFirstname() + "</td>");
			out.print("<td>" + emp.get(i).getLastname() + "</td>");
			out.print("<td>" + emp.get(i).getEmail() + "</td>");
			out.print("<td>" + emp.get(i).getSalary() + "</td>");
			out.print("<td>" + emp.get(i).getdepId() + "</td>");
			out.print("</tr>");
		}
		
	%>

</table>
</body>
</html>