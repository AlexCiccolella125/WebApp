<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form>
<% out.println(); %> Name:<input type="text" value="">
<% out.println(); %> Price:<input type="text" value="">
<% out.println(); %> Description:<input type="text" value="">
<% out.println(); %> SKU:<input type="text" value="">
<% out.println(); %> Inventory: <input type="text" value="">

</form>
<input type="button" value="submit">
<input type="button" value="delete">
</body>
</html>