<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="edu.fau.group3.util.DBUtil"
	import="edu.fau.group3.model.Product" 
	import="edu.fau.group3.model.ImageList" 
	import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	
	DBUtil util = new DBUtil();
	String SKU = request.getParameter("ProductSKU");
	Product product = util.GetProductBySKU(SKU);


%>
<fieldset>
<form action = "Update.jsp?UploadType=Product" method = "post">
	Product Name: <input type="text"  value="<%=product.getProductName() %>" name="ProductName">
	Product Price: <input type="text" value="<%=product.getProductPrice() %>" name="ProductPrice">
	Product Description: <input type="text" value="<%=product.getProductDescription() %>" name=" ProductDescription">
	Product SKU: <input type="text" value="<%=product.getProductSKU() %>" name=" ProductSKU">
	Product Inventory: <input type="text" value="<%=product.getProductInventory() %>" name=" ProductInventory">
	Image List Id: <input type="text" value="<%=product.getImageListID() %>" name="ImageListID">
	Collection Id: <input type="text" value="<%=product.getCollectionID() %>" name="CollectionID">
	<input type="button" value="submit">
</form>
</fieldset>
</body>
</html>