<!DOCTYPE html>
<html>
    <head>
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

        <h1>Admin</h1>

        <div class="row">
            <div class="column">
                <fieldset>
                    <h2>Add a New Product</h2>
                    <p>
                        <label>Product ID: </label>
                        <input type="text" id="ProdID" required>
                    </p>

                    <p>
                        <label>Product Name: </label>
                        <input type="text" id="ProdName" required>
                    </p>

                    <p>
                        <label>Product Price: </label>
                        <input type="text" id="ProdPrice">
                    </p>
                    <p>
                        <label>Product Description: </label>
                        <input type="text" id="ProdDesc" required>
                    </p>

                    <p>
                        <label>Product SKU: </label>
                        <input type="text" id="ProdSKU" required>
                    </p>

                    <p>
                        <label>Product Inventory: </label>
                        <input type="text" id="ProdInv">
                    </p>
                    <p>
                        <label>Image List ID: </label>
                        <input type="text" id="ImgLstID" required>
                    </p>

                    <p>
                        <label>Collection ID: </label>
                        <input type="text" id="CollID" required>
                    </p>

                    <button class="OrderBtn">Submit</button>

                </fieldset><fieldset>
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
                            <label>CollectionID: </label>
                            <input type="text" id="CollID" required>
                        </p>

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
                    <h2>Search for existing Users</h2>
                    <input type="text" placeholder="Search Users...">
                    <button class="SubmitBtn" onclick="Search()">Search</button>
                    <!--                    Search function needs to be created/added-->

                </fieldset>
            </div>

        </div>


    </body>
</html>
