<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import ="edu.fau.rcruz2015.util.*"
    import = "java.io.*"
    import ="java.util.*"
    import = "java.util.ArrayList"
    import = "edu.fau.rcruz2015.util.DBUtil"
    import = "edu.fau.rcruz2015.util.Student"
    import = "java.util.ArrayList"
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table {
    width:100%;
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
    text-align: left;
}
table#t01 tr:nth-child(even) {
    background-color: #eee;
}
table#t01 tr:nth-child(odd) {
   background-color:#fff;
}
table#t01 th {
    background-color: black;
    color: white;
}
</style>
</head>
<body>
	
	
	<table id=t01>
		<tr>
			<th>Id</th><th>Name</th><th>Last name</th><th>Street</th><th>City</th><th>State</th><th>Zipcode</th>
			<th>Phone</th><th>Email</th><th>MajorId</th><th>Expected Grad Date</th>
		</tr>
		
		<%
			DBUtil util = new DBUtil();
		
		ArrayList<Student> studentList = new ArrayList<Student>();
		studentList = util.getAllStudents();
		
		
		for (int index=0; index < studentList.size(); index++){ %>
		<tr>
		
		
			<td><%=studentList.get(index).getStudentid()%></td> 
			<td><%=studentList.get(index).getFirstName()%></td>
			<td><%=studentList.get(index).getLastName()%></td>
			<td><%=studentList.get(index).getStreet()%></td>
			<td><%=studentList.get(index).getCity()%></td>
			<td><%=studentList.get(index).getState()%></td>
			<td><%=studentList.get(index).getZipCode()%></td>
			<td><%=studentList.get(index).getPhone()%></td>
			<td><%=studentList.get(index).getEmail()%></td>
			<td><%=studentList.get(index).getMajorId()%></td>
			<td><%=studentList.get(index).getExpectedGradDate()%></td>
			<%} %>
		</tr>
	
	</table>
</body>
</html>