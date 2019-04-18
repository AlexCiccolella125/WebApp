<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import ="edu.fau.lnarcisse.util.Student"
    import ="edu.fau.lnarcisse.util.*"
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
	

<%

DBUtil util = new DBUtil();
ArrayList<Student> studentList =  util.getAllStudent();
String LastName = request.getParameter("LastName");
Student mystu = util.SearchStudent(LastName, studentList);
if(mystu == null){
	%>
	<h2> Student not found!!</h2>
	<a href ="Menu.html"> Back to Menu</a>
	<%
}
else{
	
	%>
	<h2> Student Information</h2>
	Student Name: <%  out.print(mystu.getsFirstName()+ " "+ mystu.getsLastName());%> <br>
	Quiz 1: <%= mystu.getnQuiz1() %> <br>
	Quiz 2: <%= mystu.getnQuiz2() %><br>
	Quiz 3: <%= mystu.getnQuiz3() %><br>
	
	Quiz Average: <%= mystu.calculateQuizAverage() %> <br>
	<a href ="Menu.html"> Back to Menu</a>
	
	<% 
	
	
}

%>
	

</body>
</html>