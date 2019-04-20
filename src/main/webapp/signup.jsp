<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="edu.fau.group3.util.DBUtil"
	import="edu.fau.group3.model.User"
	import="edu.fau.group3.model.Collection"
	import="edu.fau.group3.model.Product" 
	import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignUpForm</title>
</head>
<style>
#container {
	position: center;
	vertical-align: middle;
}

#background {
	text-align: center;
	vertical-align: middle;
}

fieldset {
	opacity: 0.8;
	filter: alpha(opacity = 80);
	width: 400px;
	margin: auto;
	display: inline-block;
	vertical-align: middle;
	margin-top: 5%;
}

#signup {
	text-align: center;
	font-family: serif;
	font-style: oblique;
	font-size: 50px;
}

#Welcome {
	text-align: center;
}

#Info {
	text-align: center;
	font-size: 15px;
}

#button {
	text-align: center;
}
}
</style>
<body>
	<div id="background">
		<fieldset>
			<div id="containter">
				<form action="Upload.jsp?UploadType=User" method="post">
					<h1 id="signup">Sign Up</h1>
					<h4 id="Welcome">Welcome! Sign Up is needed to complete
						purchases.</h4>

					<h5 id="Info">
						First Name: <input type="txt" value="" name="FirstName" required>
					</h5>
					<h5 id="Info">
						Last Name: <input type="txt" value="" name="LastName">
					</h5>
					<h5 id="Info">
						E-mail: <input type="email" value="" name="Email">
					</h5>
					<h5 id="Info">
						Address: <input type="txt" value="" name="Address">
					</h5>
					<h5 id="Info">
						Password: <input type="password" value="" name="Password">
					</h5>
					<h5 id="Info">
						PhoneNumber: <input type="tel" value="" name="PhoneNumber">
					</h5>
					<input id="button" type="Submit" Value="Sign Up">
				</form>
			</div>
		</fieldset>
	</div>
</body>
</html>