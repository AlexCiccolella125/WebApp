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

                <button class="OrderBtn">Submit</button>

            </form>
            </fieldset>
            <fieldset>
                <h2>Add a New User</h2>
                <p>
                    <label>User First Name: </label>
                    <input type="text" id="UserFN" required>
                </p>

                <p>
                    <label>User Last Name: </label>
                    <input type="text" id="UserLN" required>
                </p>

                <p>
                    <label>User E-mail: </label>
                    <input type="text" id="UserEmail">
                </p>
                <p>
                    <label>User Password: </label>
                    <input type="text" id="UserPass" required>
                </p>

                <p>
                    <label>User Phone: </label>
                    <input type="phone" id="UserPhone" required>
                </p>
                <input type="checkbox" name="admin" value="true"> Select if User is Admin<br>
                
                <br>
                <button class="OrderBtn">Submit</button>

            </fieldset><fieldset>
                <div>
                    <h2>Add a New Collection</h2>

                    <p>
                        <label>Collection Name: </label>
                        <input type="text" id="CollName" required>
                    </p>

                    <p>
                        <label>CollectionThumbnail: </label>
                        <input type="text" id="CollThmbnl">
                    </p>
                    <button class="SubmitBtn">Submit</button>
                </div>
            </fieldset>
            
        </div>
        <div class="column">
            
            
            <fieldset>
                <h2>Search for existing Collections</h2>
                <input type="text" placeholder="Search..">
                <button class="SubmitBtn" onclick="Search()">Search</button>
<!--                    Search function needs to be created/added-->

            </fieldset>
            <fieldset>
                <h2>Search for existing Products</h2>
                <input type="text" placeholder="Search..">
                <button class="SubmitBtn" onclick="Search()">Search</button>
                

            </fieldset><fieldset>
                <h2>Modify Existing Users</h2>
                <a href="modifyusersform.jsp">See All Users</a>
                <!--                    Search function needs to be created/added-->

            </fieldset>
        </div>

    </div>

</body>
</html>