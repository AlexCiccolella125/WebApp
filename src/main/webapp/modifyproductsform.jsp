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
<jsp:include page="Restricted.jsp" />

<%
	String SKU = request.getParameter("ProductSKU");
	if(DBUtil.checkIfProductExists(SKU) != true){
		response.sendRedirect("admin.jsp?DeleteSuccess=false");
	}else{
	Product product = DBUtil.GetProductBySKU(SKU);
	ImageList images = DBUtil.getImagesByID(product.getImageListID());
%>
<fieldset>
<form action = "Update.jsp?UpdateType=Product" method = "post">
	Product Name: <input type="text"  value="<%=product.getProductName() %>" name="ProductName">
	<br>Product Price: <input type="text" value="<%=product.getProductPrice() %>" name="ProductPrice">
	<br>Product Description: <input type="text" value="<%=product.getProductDescription() %>" name="ProductDescription">
	<br>Product SKU: <input type="text" value="<%=product.getProductSKU() %>" name="ProductSKU">
	<br>Product Inventory: <input type="text" value="<%=product.getProductInventory() %>" name="ProductInventory">
	<br>Thumbnail: <input type="text" value="<%=images.getThumbnail()%>" name="ImageThumbnail">
	<br>Image1: <input type="text" value="<%=images.getImage1()%>" name="Image1">
	<br>Image2: <input type="text" value="<%=images.getImage2()%>" name="Image2">
	<br>Image3: <input type="text" value="<%=images.getImage3()%>" name="Image3">
	<br>Image4: <input type="text" value="<%=images.getImage4()%>" name="Image4">
	<input type="hidden" value="<%=product.getCollectionID() %>" name="CollectionID">
	<br><input type="hidden" value="<%=product.getProductID()%>" name="productID"/>
	<input type="hidden" value="<%=images.getImageListID()%>" name="imagelistID"/>
	<input type=submit value="submit">
</form>
</fieldset>
<form action="Delete.jsp?Type=Product&ID=<%=SKU%>" method="post">
	<button type="submit"> Delete Product</button>
</form>
<%} %>
</body>
</html>