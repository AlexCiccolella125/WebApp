<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = 'edu.fau.group3.util.DBUtil'
    import = 'edu.fau.group3.model.Collection'
    import = "java.util.List"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Pillow Talk</title>
<link href="../css/BackgroundCSS.css" rel="stylesheet" type="text/css">
</head>
    <body>
    <%
    List<Collection> Collections = DBUtil.getAllCollections();
    for (int i=0; i < Collections.size(); i++){
    %>
	<div>
	<% 
	out.print("<p>" + Collections.get(i).getCollectionName() + "<p>");
	out.print("<p>" + Collections.get(i).getCollectionID() + "<p>");
	out.print(Collections.get(i).getCollectionThumbnail());%>
	<img src= "<%Collections.get(i).getCollectionThumbnail(); %>">
	</div>
    <%} %>
        <div class="split left">
            <img src="pillow.jpg" alt="Pillows" class="pillow">
            <div class= "centered">
                <h1>Pillows</h1>
            </div>
        </div>

        <div class="split right">
            <img src="newmattress.jpg" alt="Mattress" class="mattress">
            <div class= "centered">
                <h1>Mattresses</h1>	
            </div>
        </div>
</body>
</html>
