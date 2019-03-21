<%@ 
	page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    
    import = "edu.fau.aciccolella2015.configuration.DBUtil"
    import = "edu.fau.aciccolella2015.configuration.Employee"
    import = "edu.fau.aciccolella2015.configuration.JDBCConfig"
    import = "java.util.List"
    import = "java.util.ArrayList"
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

	DBUtil db = new DBUtil();
	String ID = request.getParameter("txtID");
	String name = request.getParameter("txtname");
	String lastname = request.getParameter("txtlastname");
	String email = request.getParameter("txtemail");
	Double salary = Double.parseDouble(request.getParameter("txtsalary"));
	Integer DepId = Integer.parseInt(request.getParameter("txtdepid"));
	Employee e = new Employee(ID, name, lastname, email, salary, DepId);
	
	
	boolean didSave = db.createEmployee(e);
	if (didSave){
		out.print("<h2>Employee created!</h2>");
		out.print("<h2>Employee ID: " + e.getEmpId() + "</h2>");
		out.print("<h2>Employee Name: " + e.getFirstname() + " " + e.getLastname() + "</h2>");
		out.print("<h2>Employee DepId: " + e.getdepId() + "</h2>" );
	}
	else {
		out.print("<h2>Error creating Employee. Contact Helpdesk.</h2>");
	}
%>
</body>
</html>