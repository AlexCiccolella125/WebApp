<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "edu.fau.group3.util.DBUtil"
    import = "java.util.List"
    import= "edu.fau.group3.model.Product"
    %>
<!DOCTYPE html>
<html>
    <head>

        <title>Mattresses</title>
	<link href="Product.css" rel="stylesheet" type="text/css">
	<link href="Login.css" rel="stylesheet" type="text/css">

    </head>
    <body>
<%@include file="Banner.jsp" %>
<br>
<%
int id = request.getParameter("CollectionID");
DBUtil util = new DBUtil();

List<Product> Product = DBUtil.GetProductsByCollectionId(id);
for (int i=0; i<Product.size(); i++){
%>
        <div class="header">
            <h1>
            <% out.print(Product.get(i).getProductName()); %>
            </h1>
            <% out.print(Product.get(i).getProductPrice()); %>

        </div>
        <% } %>
        <div class="row">
            <div class="image">
                <img src="mattress.jpg" alt="Pillows" class="pillow" style="width: 100%">
                <div class= "centered">
                    <h1>Memory Mattress</h1><br /><br /><br /><br />
                    <h2>$129.99</h2>
                </div>
            </div>
            <div class="image">
                <img src="mattress.jpg" alt="Pillows" class="pillow" style="width: 100%">
                <div class= "centered">
                    <h1>Mellow Mattress</h1><br /><br /><br /><br />
                    <h2>$99.99</h2>
                </div>

            </div>

        </div>
    </body>
</html>