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
		<ul>
	  		<li><a href="Home.jsp">Home</a></li>
			<li style="float:right"><a class="active" href="#about">Logout</a></li>
		  	<li style="float:right"><a class="active" href="#about">Username</a></li>
		</ul>
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