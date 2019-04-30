<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "edu.fau.group3.util.DBUtil"
    import= "edu.fau.group3.model.Product"
    import = "edu.fau.group3.model.ImageList"
    import = "java.util.List"
    %>
<!DOCTYPE html>
<html>
    <head>

        <title>Mattresses</title>
	<link href="Product.css" rel="stylesheet" type="text/css">
	<link href="Login.css" rel="stylesheet" type="text/css">

    </head>
    <body>
<jsp:include page="Banner.jsp" />
<%
//initialising parameters
DBUtil util = new DBUtil();
List<Product> Product = null;//initialise list
int collectionInt = Integer.parseInt(request.getParameter("collectionID"));

//The .getParameter is a string, the Integer.parseInt needed for DBUtil to function
//DBUtil checks the database for products with this specific collectionID
//If the parameter -1, "see all products" on banner.jsp passed the collectionID.
if(collectionInt > 0){//CollectionInt is above 1 when a specific collection is called
	Product = DBUtil.getProductsByCollectionId(collectionInt);
}
else{
	Product = DBUtil.getAllProducts();//"see all products" returns -1 therefore failing first check
}
for (int i=0; i<Product.size(); i++){
	//get the imageId from the product
	//load the record from database and pass it to ImageList object
	ImageList Image = DBUtil.getImagesByID(Product.get(i).getImageListID());
%>
		<!-- The formatting for this page needs editing, the image and text keep overlapping -->
        <div class="row">
            <div class="image">
                <img src="<%=Image.getThumbnail() %>" class="pillow" style="width: 100%">
                <%--print the imageList image --%>
                
                <div class= "centered">
                    <h1><% out.print(Product.get(i).getProductName()); %></h1><br>
                    <h2><% out.print(Product.get(i).getProductPrice()); %></h2>
                </div>
            </div>
        </div>
        <% }%>
    </body>
</html>