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
<title>Login</title>
<%-- calling the css --%>
<link type= text/css rel="stylesheet" href="Login.css">


</head>
<body>

	<jsp:include page="Banner.jsp" ></jsp:include> 
	<div id="back">
		<fieldset id ="LoginPage">
			<div class="container">
				<form action="validate.jsp" method="post"> 
					<h1 id="login">Login</h1>
					<h4 id="Info">
						Welcome back! Login to access our files. Did you forget your <a>password</a>?
					</h4>
					<h5 id="UP">
						Email: <input type="text" value="" name="email">
					</h5>
					<h5 id="UP">
						Password: <input type="text" value="" name="password">
					</h5>
					<input id="button" type="Submit" Value="Login">
				</form>
			</div>
		</fieldset>
	</div>
</body>
</html>