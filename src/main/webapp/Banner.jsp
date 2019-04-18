<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	
	import = "edu.fau.group3.util.DBUtil"
    import = "edu.fau.group3.model.User"
    import = "edu.fau.group3.model.Collection"
    import = "edu.fau.group3.model.Product"
    import = "java.util.List"
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Banner</title>
<link href="Banner.css" rel="stylesheet" type="text/css">
</head>

<body>
	<div class="topnav">
		<a class="#active" href="Login.jsp">Home</a>
		<div class="dropdown">
			<button class="dropbtn">Collections <i class="fa fa-caret-down"></i></button>
			<div class="dropdown-content">
				<%
			    List<Collection> Collections = DBUtil.getAllCollections();
			    for (int i=0; i < Collections.size(); i++){
					if(i >= Collections.size()){
						break;
					}%>
					<a href="ProductSelection.jsp?collectionID=<%out.print(Collections.get(i).getCollectionID());%>">
					<%out.print(Collections.get(i).getCollectionName()); %></a>
				<%}%>
				<a href="Collection.jsp?CollectionID=null">See All Collections</a>
			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">
				Products <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<%
			    List<Product> product = DBUtil.getAllProducts();
				for (int i=0; i < 4 ; i++){
					if(i >= product.size()){
						break;
					}%>
					<a href="Product.jsp?productID=<%out.print(product.get(i).getProductID());%>">
					<%out.print(product.get(i).getProductName()); %></a>
					
				<%}%>
				<a href="Product.jsp?productID=null">See All Products</a>
			</div>
		</div>
		<a href="Contact.html">Login</a>

	</div>
</body>
</html>