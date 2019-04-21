<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    
    import = "edu.fau.group3.util.DBUtil"
    import = "edu.fau.group3.model.User"
    import = "edu.fau.group3.model.ImageList"
    import = "edu.fau.group3.model.Product"
    import = "java.util.List"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
	DBUtil util = new DBUtil();
	String UploadType = request.getParameter("UploadType");
	int IDPlaceholder = -1;//this is a placeholder because most objects in model need an ID
	
	if (UploadType.equals("User")){
		//creates new user
		boolean adminStatus = false;
		Long phone = Long.parseLong(request.getParameter("PhoneNumber"));
		String firstName = request.getParameter("FirstName");
		String lastName = request.getParameter("LastName");
		String email = request.getParameter("Email");
		String password = request.getParameter("Password");
		User signupUser = new User(IDPlaceholder,firstName,lastName,email, password, adminStatus, phone);
		
		if(DBUtil.checkIfEmailExists(email) == true){
			response.sendRedirect("index.jsp?CreationSuccess=false");//returns a failure if email exists
		}
		else{//if email does not exist, continue
			boolean UserAdded = util.createUser(signupUser);//attempts to create user
			if (UserAdded){
				response.sendRedirect("index.jsp?CreationSuccess=true");//UserAdded is true, redirect with success flag
			}
			else{
				response.sendRedirect("index.jsp?CreationSuccess=false");//UserAdded False, redirect with error flag
			}
		}
	}
	if (UploadType.equals("Product")){
		//creates new product
		String productName = request.getParameter("ProductName");
		Double productPrice = Double.parseDouble(request.getParameter("ProductPrice"));
		String productDescription = request.getParameter("ProductDesccription");
		String productSKU = request.getParameter("ProductSKU");
		int productInventory = Integer.parseInt(request.getParameter("ProductInv"));
		int collectionID = Integer.parseInt(request.getParameter("CollectionID"));
		int imageListID = Integer.parseInt(request.getParameter("ImageListID"));
		String imageThumbnail = null;
		if(util.checkIfImageListExists(imageListID) == false){//Create new imageList in database First if it does not exist already
			
			if(request.getParameter("ImageThumbnail") == null){
				imageThumbnail = "Missing.jpeg";
			}
		
			else{
				imageThumbnail = request.getParameter("ImageThumbnail");
			}
		
			String image1 = request.getParameter("Image1");
			String image2 = request.getParameter("Image2");
			String image3 = request.getParameter("Image3");
			String image4 = request.getParameter("Image4");
			ImageList images = new ImageList(imageListID, imageThumbnail,image1, image2, image3, image4);
			util.createImageList(images);
		}
		
		Product product = new Product(IDPlaceholder,productName, productPrice, productDescription,productSKU,productInventory,imageListID, collectionID);
		boolean productExist = DBUtil.checkIfProductExists(productName);
		if(productExist){
			response.sendRedirect("admin.jsp?CreationSuccess=false");//productAdded False, redirect with error flag
		}
		else{
			boolean ProductAdded = util.createProduct(product);//attempts to make new product
			if (ProductAdded){
				response.sendRedirect("admin.jsp?CreationSuccess=true");//productAdded is true, redirect with success flag
			}
			else{
				response.sendRedirect("admin.jsp?CreationSuccess=false");//productAdded False, redirect with error flag
			}
		}
	
	}
	if(UploadType.equals("ModifyUser")){
		out.print("continue");
	}
	%>
</body>
</html>