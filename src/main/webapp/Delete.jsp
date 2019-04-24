<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "edu.fau.group3.util.DBUtil"
    import = "edu.fau.group3.model.Product"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete</title>
</head>
<body>
	<jsp:include page="Restricted.jsp" />
	<%
	if(request.getParameter("Type").equals("Product")){
		String SKU = request.getParameter("ID");
		Product product = DBUtil.GetProductBySKU(SKU);
		if(DBUtil.DELETEProduct(product)){
			if(DBUtil.DELETEImages(DBUtil.getImagesByID(product.getImageListID()))){
				response.sendRedirect("admin.jsp?CreationSuccess=true");//DELETEProduct is true, redirect with success flag
			}else{
				response.sendRedirect("admin.jsp?CreationSuccess=false");//DELETEProduct False, redirect with error flag
			}		
		}else{
			response.sendRedirect("admin.jsp?CreationSuccess=false");//DELETEProduct False, redirect with error flag
		}
	}
	
	if(request.getParameter("Type").equals("Collection")){
		String name = request.getParameter("Name");
		if(DBUtil.DELETECollection(DBUtil.getCollectionByName(name))){
			response.sendRedirect("admin.jsp?CreationSuccess=true");//DELETEProduct is true, redirect with success flag
		}
		else{
			response.sendRedirect("admin.jsp?CreationSuccess=false");//DELETEProduct False, redirect with error flag
		}
	}
	
	if(request.getParameter("Type").equals("User")){
		String Email = request.getParameter("Email");
		if(DBUtil.DELETEUser((DBUtil.getUserByEmail(Email)))){
			response.sendRedirect("admin.jsp?CreationSuccess=true");//DELETEProduct is true, redirect with success flag
		}
		else{
			response.sendRedirect("admin.jsp?CreationSuccess=false");//DELETEProduct False, redirect with error flag
		}
	}
	%>
</body>
</html>