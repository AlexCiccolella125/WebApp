<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String ProductName = request.getParameter("ProductName");
String ProductPrice = request.getParameter("ProductPrice");
String ProductID = request.getParameter("ProductID");
String ProductDescr = request.getParameter("ProductDescr");
String ProductSKU = request.getParameter("ProductSKU");
String ProductInven = request.getParameter("ProductInven");
String ImgListID = request.getParameter("ImgListID");
String CollectID = request.getParameter("CollectID");

%>
</body>
</html>