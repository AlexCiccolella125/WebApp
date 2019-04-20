<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<fieldset>
<form action = "ValUpload.jsp?UploadType=User" method = "post">
Product Name: <input type="text"  value="" name="ProductName">
Product Price: <input type="text" value="" name="ProductPrice">
Product Id: <input type="text" value="" name=" ProductID">
Product Description: <input type="text" value="" name=" ProductDescr">
Product SKU: <input type="text" value="" name=" ProductSKU">
Product Inventory: <input type="text" value="" name=" ProductInven">
Image List Id: <input type="text" value="" name="ImgListID">
Collection Id: <input type="text" value="" name="CollectID">
<input type="button" value="submit">
</form>
</fieldset>
<input type="button" value="submit">
<input type="button" value="delete">
</body>
</html>