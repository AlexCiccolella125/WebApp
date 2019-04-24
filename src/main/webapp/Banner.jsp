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


	<%//PARAMETERS
	DBUtil util = new DBUtil();

	
	// AUTHENTICATION CODE
	if(request.getParameter("CreationSuccess") != null){
		if(request.getParameter("CreationSuccess").equals("true")){
			out.print("User Creation Successful<BR>");
		}else{
			out.print("Error Creating User<BR>");
		}
	}
	Integer uid = (Integer)session.getAttribute("sessionID");
	if(uid == null){%>
		<a href="signup.jsp"><% out.print("Log in or make an account");%></a>
	<% }%>
	
	<%-- Banner Code --%>
	<div class="topnav">
		<a class="#active" href="index.jsp">Home</a>
		<div class="dropdown">
			<button class="dropbtn">Collections <i class="fa fa-caret-down"></i></button>
			<div class="dropdown-content">
				<%
			    List<Collection> Collections = DBUtil.getAllCollections();
			    for (int i=0; i < Collections.size(); i++){
					if(i >= Collections.size()){
						break;
					}%>
					<a href="Product.jsp?collectionID=<%out.print(Collections.get(i).getCollectionID());%>">
					<%out.print(Collections.get(i).getCollectionName()); %></a>
				<%}%>
				<a href="Collection.jsp?CollectionID=-1">See All Collections</a>
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
					<a href="ProductPage.jsp?productID=<%out.print(product.get(i).getProductID());%>">
					<%out.print(product.get(i).getProductName()); %></a>
					
				<%}%>
				<a href="Product.jsp?collectionID=-1">See All Products</a>
			</div>
		</div>
		<a href="
			<%if(uid == null || uid == -1){
				out.print("Login.jsp");
				%>"><%
				out.print("Login"); 
			}else{
				out.print("signout.jsp");

				%>"><%="Sign out"%>
				</a>
			<% User user = DBUtil.getUserById(uid);
				if(user.getAdminStatus()){%>
				<a href="admin.jsp">Admin</a>
				<%
			}}
		 %>
	
		
		
	</div>
</body>
</html>