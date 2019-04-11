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
	// AUTHENTICATION
	Integer uid = (Integer)session.getAttribute("sessionID");
	if (uid == null) {
		response.sendRedirect("JSPFiles/index.jsp");
	}// END AUTHENTICATION
	
	User user = DBUtil.getUserById(uid);
	String username = user.getFisrtName() + " " + user.getLastName();
	%>
	<ul>
  		<li><a href="JSPFiles/Home.jsp">Home</a></li>
		<li style="float:right"><a class="active" href="index.jsp">Logout</a></li>
	  	<li style="float:right"><a class="active" href="#about"><%=username%></a></li>
	</ul>
	
	<%
		int ID = Integer.parseInt(request.getParameter("txtID"));
		String name = request.getParameter("txtname");
		String lastname = request.getParameter("txtlastname");
		String email = request.getParameter("txtemail");
		double salary = Double.parseDouble(request.getParameter("txtsalary"));
		int depId = Integer.parseInt(request.getParameter("txtdepid"));
		Employee e = new Employee (ID, name, lastname, email, salary, depId);
		
		boolean didSave = DBUtil.createEmp(e);
		
		if (didSave){
			out.print("<h2>Employee created!</h2>");
			out.print("<h2>Employee id: "+ e.getId()+ "</h2>");
			out.print("<h2>Employee name: "+ e.getFirstName() + " " + e.getLastName() + "</h2>");
			out.print("<h2>Employee DepId: "+ e.getDeptId()+ "</h2>");
		}
		else if (didSave==false){
			out.print("<h2>Id " + e.getId()+ " already exist! "+ "</h2>");
		}
		else {
			out.print("<h2>Error creating employee, contact helpdek</h2>");
		}
	%>

</body>
</html>