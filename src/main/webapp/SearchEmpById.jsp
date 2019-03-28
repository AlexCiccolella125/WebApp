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
</head>
<body>
	<%
		
		String sEmpid = request.getParameter("ID");
		
			if (sEmpid.equals("")){
		
				%>
				<script>
					alert("Enter id");
					window.open("MenuWeek11.html", "_self");
					//window.location.href = 'MenuWeek11.html';
				</script>
				
				<%
			}	
			else {	
				int empid = Integer.parseInt(sEmpid);
	 			Employee emp = DBUtil.getEmpById(empid);
				if (emp != null){ 
					out.print("<h1>Employee information</h1>");
					out.print("Id: " +  emp.getId() + "<br>");
					out.print("Name: " + emp.getFirstName() + " " + emp.getLastName() + "<br>");
					out.print("Salary: " + emp.getSalary());
				}
				else {
					out.print("<h2>Employee not found!</h2>");
				}
			}	
	%>
</body>
</html>