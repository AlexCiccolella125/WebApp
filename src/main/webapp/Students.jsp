<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import ="edu.fau.lnarcisse.util.Student"
    import ="edu.fau.lnarcisse.util.DBUtil"
    import = "java.io.*"
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

<th> Name</th>
<th> Last Name</th>
<th> Quiz 1</th>
<th> Quiz 2</th>
<th> Quiz 3</th>
</tr>
<%
	DBUtil util = new DBUtil();
ArrayList<Student> studentList =  util.getAllStudent();

for (int i = 0; i < studentList.size(); i++){
	out.print("<tr>");
	out.print("<td>" + studentList.get(i).getsFirstName()+ "</td>");
	out.print("<td>" + studentList.get(i).getsLastName() + "</td>");
	out.print("<td>" + studentList.get(i).getnQuiz1() + "</td>");
	out.print("<td>" + studentList.get(i).getnQuiz2() + "</td>");
	out.print("<td>" + studentList.get(i).getnQuiz3() + "</td>");
	
}

%>
	
	</table>
</body>
</html>