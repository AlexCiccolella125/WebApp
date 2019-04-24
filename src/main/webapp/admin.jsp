<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="edu.fau.group3.model.User"
	import="edu.fau.group3.model.Collection"
	import="edu.fau.group3.model.Product" 
	import="edu.fau.group3.util.DBUtil" 
	import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<style>

            h1 {
                text-align: center;
                font-family:serif;
                font-style: oblique; 
                font-size: 30px;
            }
            .row {
                display: flex;
            }

            .column {
                flex: 50%;
                padding: 10px;


        </style>
</head>
<body>
<jsp:include page="Banner.jsp" />
<jsp:include page="Restricted.jsp" />
    <%
    DBUtil util = new DBUtil();
    %>
    <BR><h1>Admin</h1>

    <div class="row">
        <div class="column">
            <fieldset>
            <form action="Upload.jsp?UploadType=Product" method="post">
                <h2>Add a New Product</h2>
                <p>
                    <label>Product Name: </label>
                    <input type="text" name="ProductName" required>
                </p>
                <p>
                    <label>Product Price: </label>
                    <input type="text" name="ProductPrice">
                </p>
                <p>
                    <label>Product Description: </label>
                    <input type="text" name="ProductDesccription" required>
                </p>
                <p>
                    <label>Product SKU: </label>
                    <input type="text" name="ProductSKU" required>
                </p>
                <p>
                    <label>Product Inventory: </label>
                    <input type="text" name="ProductInv">
                </p>
                <p>
                   <label>ImageListID: </label>
                   <input type="text" name="ImageListID" required>
               </p>
                <p>
                    <label>Image Thumbnail URL: </label>
                    <input type="text" name="ImageThumbnail">
                </p>
                <p>
                    <label>Image 1 URL: </label>
                    <input type="text" name="Image1">
                </p>
                <p>
                    <label>Image 2 URL: </label>
                    <input type="text" name="Image2">
                </p>
                <p>
                    <label>Image 3 URL: </label>
                    <input type="text" name="Image3">
                </p>
                <p>
                    <label>Image 4 URL: </label>
                    <input type="text" name="Image4">
                </p>
                <p>Select Collection</p>
				<select name = "CollectionID" >
                <%
               List<Collection> collections = DBUtil.getAllCollections();
                	for(int i = 0; i < collections.size(); i++){
                		%><option value="<%out.print(collections.get(i).getCollectionID());%>" ><%out.print(collections.get(i).getCollectionName()); %></option><%
                	}
                %>
                </select>

                <button type="submit">Submit</button>

            </form>
            </fieldset>
            <form action="Upload.jsp?UploadType=User" method="post">
            <fieldset>
                <h2>Add a New User</h2>
                <h5 id="Info">
						First Name: <input type="txt" value="" name="FirstName" required>
					</h5>
					<h5 id="Info">
						Last Name: <input type="txt" value="" name="LastName">
					</h5>
					<h5 id="Info">
						E-mail: <input type="email" value="" name="Email">
					</h5>
					<h5 id="Info">
						Address: <input type="txt" value="" name="Address">
					</h5>
					<h5 id="Info">
						Password: <input type="password" value="" name="Password">
					</h5>
					<h5 id="Info">
						PhoneNumber: <input type="tel" value="" name="PhoneNumber">
					</h5>
					<h5 id="Info">
						AdminStatus: 
							<select name="AdminStatus">
							<option value="true" >yes</option>
							<option value="false">no</option>
							</select>
					</h5>
					<input id="button" type="Submit" Value="Sign Up">

            </fieldset></form>
       <form action="Upload.jsp?UploadType=Collection" method="post">
            <fieldset>
                <div>
                    <h2>Add a New Collection</h2>

                    <p>
                        <label>Collection Name: </label>
                        <input type="text" name="CollectionName" required>
                    </p>
                    <p>
                        <label>CollectionThumbnail: </label>
                        <input type="text" name="CollectionThumbnail">
                    </p>
                    <input id="button" type="Submit">
                </div>
            </fieldset>
        </form>
            
        </div>
        <div class="column">
            <form action="modifycollectionsform.jsp" method="post">
            <fieldset>
                <h2>Search for existing Collections</h2>
                <input type="text" name="CollectionName" placeholder="Search CollectionName..">
                <input id="button" type="Submit" Value="Search">
		<!--Search function needs to be created/added-->
            </fieldset>
            </form>
            
            <form action="modifyproductsform.jsp" method="post">
            <fieldset>
                <h2>Search for existing Products</h2>
                <input type="text" name="ProductSKU" placeholder="Search ProductSKU..">
                <input id="button" type="Submit" Value="Search">
            </fieldset>
            </form>
            
            <form action="modifyusersform.jsp" method="post">
            <fieldset>
                <h2>Search for Existing Users</h2>
                <input type="text" name="UserEmail" placeholder="Search Emails.."> 
                <input id="button" type="Submit" Value="Search">
            </fieldset>
            </form>
        </div>
    </div>
</body>
</html>