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
    import = "edu.fau.rcruz2015.util.DBUtil"
    import = "edu.fau.rcruz2015.util.Student"
    import = "java.util.ArrayList"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Detailed Student Information</title>
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
	<h1>Student Report</h1>
	
	<table id=t01>
		<tr>
			<th>First Name</th><th>Last Name</th><th>Quiz 1</th><th>Quiz 2</th><th>Quiz 3</th>
		</tr> <% 
			DBUtil util = new DBUtil();
			ArrayList<Student> studentList = util.getAllStudents();
		
		for (int index=0; index < studentList.size(); index++){
			out.print("<tr>");
			out.print("<td>" + studentList.get(index).getFirstName()+ "</td>");
			out.print("<td>" + studentList.get(index).getLastName() + "</td>");
			out.print("<td>" + studentList.get(index).getQuiz1() + "</td>");
			out.print("<td>" + studentList.get(index).getQuiz2() + "</td>");
			out.print("<td>" + studentList.get(index).getQuiz3() + "</td>");
			out.print("<td>" + studentList.get(index).calculateQuizAverage() + "</td>");
			}
		%>
			
	</table>

	<a href= "FAUAdminHW6.html">Back to Menu</a>
</body>
</html>