<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "edu.fau.otoledo.week11.model.User"
    import = "edu.fau.otoledo.week11.util.DBUtil"
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

<%
//Authentication
	Integer uid = (Integer)session.getAttribute("sessionID");
	if(uid == null){
		%>
			<jsp:forward page="index.jsp"/>
		<%
	}//END AUTHENTICATION
	User user = DBUtil.getUserById(uid);	
%>

<body>
	<ul>
  		<li><a href="Home.jsp">Home</a></li>
		<li style="float:right"><a class="active" href="logout.jsp">Logout</a></li>
	  	<li style="float:right"><a class="active" href="#about">Username</a></li>
	</ul>
	<p><a href="Employee.jsp">Show all Employees</a></p>
	<p><a href="EmployeeV2.jsp">Show all Employees V2</a></p>
	<p>Search EmpId<input type="text" name="txtid" id="txtid">
	<input type="button" value="Search" onclick="searchEmp()"></p>
	
	<form action="AddEmployee.jsp" id="frm1" name="frm1" method="post">
		<fieldset style="width:30%;"><legend><em><strong>Add new employee
												</strong></em></legend>
			<div id="div1">
				<label for="lblid">ID</label>
				<input type="text" id="txtID" name="txtID" required/>
			</div>
			<div id="div2">
				<label for="lblname">Name</label>
				<input type="text" id="txtname" name="txtname" required/>
			</div>
			<div id="div3">
				<label for="lbllastname">Last Name</label>
				<input type="text" id="txtlastname" name="txtlastname" required/>
			</div>			
			<div id="div4">
				<label for="lblemail">Email</label>
				<input type="text" id="txtemail" name="txtemail" required/>
			</div>			
			<div id="div5">
				<label for="lblsalary">Salary</label>
				<input type="text" id="txtsalary" name="txtsalary" required/>
			</div>
			<div id="div6">
				<label for="lbldepid">Department Id</label>
				<input type="text" id="txtdepid" name="txtdepid" required/>
			</div>				
			<div id="div7">
				<input type="submit" value="Add Employee"/>
			</div>
		</fieldset>
	</form>
	
	
</body>

<script type="text/javascript">
	function searchEmp(){
		var id = document.getElementById("txtid").value;
		console.log('ID = ' + id);
		window.open("SearchEmpById.jsp?ID=" + id, "_self");
		
	}


</script>
</html>