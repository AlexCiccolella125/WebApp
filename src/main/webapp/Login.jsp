

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    
    import = "edu.fau.group3.util.DBUtil"
    import = "edu.fau.group3.model.User"
    import = "java.util.List"
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%-- calling the css --%>
<link rel="stylesheet" href="Login.css">
</head>
<body>

<div id = "background">
	<fieldset>
	    <div id= "container">
			<form action="validate.jsp" method ="post">
			    <h1 id="login"> Login</h1>
			    <h4 id="Info">Welcome back! Login to access our files. Did you forget your <a>password</a>?</h4>
				<h5 id="UP">Email: <input type="txt" value="" name="email"></h5> 
				<h5 id="UP">Password: <input type="txt" value="" name="password"></h5>
			  <input id= "button" type="Submit" Value="Login">  
			</form>
	    </div>
	</fieldset>
</div>

</body>
<script type="text/javascript">
	function searchEmp(){
		var id = document.getElementById("txtid").value;
		console.log('ID = ' + id);
		window.open("SearchEmpById.jsp?ID=" + id, "_self");
		
	}


</script>
</html>