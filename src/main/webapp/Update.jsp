<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="edu.fau.group3.util.DBUtil"
	import="edu.fau.group3.model.User" 
	import="edu.fau.group3.model.Collection" 
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
String UpdateType = request.getParameter("UpdateType");
DBUtil util = new DBUtil();

if(UpdateType.equals("User")){
	String Email = request.getParameter("Email");
	String FirstName = request.getParameter("FirstName");
	String LastName = request.getParameter("LastName");
	String Password = request.getParameter("Password");
	Long Phone = Long.parseLong(request.getParameter("Phone"));
	boolean AdminStatus = Boolean.parseBoolean(request.getParameter("AdminStatus"));
	int userId = util.getUserByEmail(Email).getUserId();
	User user = new User(userId, FirstName, LastName, Email, Password, AdminStatus, Phone);
	if(util.updateUser(user)){
		response.sendRedirect("admin.jsp?CreationSuccess=true");//updateUser is true, redirect with success flag
	}else{
		response.sendRedirect("admin.jsp?CreationSuccess=false");//updateUser False, redirect with error flag
	}
}

if(UpdateType.equals("Collection")){
	String Name = request.getParameter("Name");
	String thumbnail = request.getParameter("thumbnail");
	int ID = Integer.parseInt(request.getParameter("ID"));
	Collection collection = new Collection(ID, Name, thumbnail);
	if(util.updateCollection(collection)){
		response.sendRedirect("admin.jsp?CreationSuccess=true");//updateCollection is true, redirect with success flag
	}else{
			response.sendRedirect("admin.jsp?CreationSuccess=false");//updateCollection False, redirect with error flag
	}
}
if(UpdateType.equals("Product")){
	
	Product product = new Product(
		Integer.parseInt(request.getParameter("productID")), 
		 request.getParameter("ProductName"), 
		 Double.parseDouble(request.getParameter("ProductPrice")), 
		 request.getParameter("ProductDescription"), 
		 request.getParameter("ProductSKU"),
		 Integer.parseInt(request.getParameter("ProductInventory")), 
		 Integer.parseInt(request.getParameter("imagelistID")),
		 Integer.parseInt(request.getParameter("CollectionID"))
	 );
	ImageList imagelist = new ImageList(
		Integer.parseInt(request.getParameter("imagelistID")),  
		request.getParameter("ImageThumbnail"), 
		request.getParameter("Image1"), 
		request.getParameter("Image2"), 
		request.getParameter("Image3"), 
		request.getParameter("Image4")
	);
	
	if(util.updateProduct(product)){
		//second layer to update imagelist if updateProduct succeeds
		if(util.updateImageList(imagelist)){
			response.sendRedirect("admin.jsp?CreationSuccess=true");//updateImageList is true, redirect with success flag
		}else{
			response.sendRedirect("admin.jsp?CreationSuccess=false");//updateImageList False, redirect with error flag
		}
	}else{
			response.sendRedirect("admin.jsp?CreationSuccess=false");//updateProduct False, redirect with error flag
	}
}

//the delete page needs to be added also


%>
</body>
</html>
