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
<title>Search Student by Last Name</title>
<style>

		h1 {
            	color: #e5acac;
            	font-weight: bold;
            	font-family: fantasy;
            }
</style>
</head>
<body>
	<%
	DBUtil db = new DBUtil();
	ArrayList<Student> stuList = new ArrayList<Student>();
	stuList = db.getAllStudents();
	String lastname = request.getParameter("Last Name");
	Student stu = db.searchStudent(lastname, stuList);
	if (stu == null){
		out.print("<h1>Student not found!</h1>");
	}
	else{
		%>
		<h1>Student Information</h1>
		Student Name: <%out.print(stu.getFirstName() + " " + stu.getLastName());%><br>
		Quiz 1: <%= stu.getQuiz1() %> <br>
		Quiz 2: <%= stu.getQuiz2() %> <br>
		Quiz 3: <%= stu.getQuiz3() %> <br>
		Quiz Average: <%= stu.calculateQuizAverage() %>
		
			<a href= "FAUAdminHW6.html">Back to Menu</a>

		<%} %>
	
	
	
</body>
</html>