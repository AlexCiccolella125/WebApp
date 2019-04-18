<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "edu.fau.group3.util.DBUtil"
    import = "java.util.List"
    import= "edu.fau.group3.model.Product"
    import = "edu.fau.group3.model.ImageList"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Page</title>
<link href="Login.css" rel="stylesheet" type="text/css">
</head>
<body>
<%@include file="Banner.jsp" %>
<br>
<%
String ProductName = request.getParameter("ProductName");
DBUtil util= new DBUtil();
Product product = DBUtil.getProductByID(request.getParameter("ProductID"));
List<ImageList> ImageList = DBUtil.getImagesByID(id);
for (int i =0; i<ImageList.size(); i++){

%>
<div>
out.print(Image)
</div>

<%
}
%>

</body>
</html>