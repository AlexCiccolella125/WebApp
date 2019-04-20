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
<jsp:include page="Banner.jsp" />
<br>
<%
DBUtil util= new DBUtil();//initialise variables

Product product = DBUtil.getProductByID(Integer.parseInt(request.getParameter("productID")));


ImageList Images = DBUtil.getImagesByID(product.getImageListID());

Images.getThumbnail();
if(Images.getImage1().isEmpty()){
	out.print("empty1");
}if(Images.getImage2().isEmpty()){
	out.print("empty2");
}if(Images.getImage3().isEmpty()){
	out.print("empty3");
}if(Images.getImage4().isEmpty()){
	out.print("empty4");
}
%>

<!-- The pictures that are in the database are just placeholders that I added -->
<!-- They need to be changed before we present the project -->
<div>
<p><%out.print(product.getProductName()); %></p>
<p><%out.print(product.getProductPrice()); %></p>
<p><%out.print(product.getProductDescription()); %></p>
<p><%out.print(product.getProductSKU()); %></p>

<!-- Below are the images of the product -->


<img src="<%out.print(Images.getThumbnail()); %>">
<%
//takes all the image URL's and adds them to a list
//if there is a String that is null, the loop is broken
//null Strings mean that there is no image in the Database.
String[] images = {Images.getImage1(),Images.getImage2(),Images.getImage3(),Images.getImage4()};
	for(int i = 0; i<4; i++){
		if(images[i] != null){
			%><img src="<%out.print(images[i]); %>"><%
		}
		else{
			break;
		}
	}
%>


</div>


</body>
</html>