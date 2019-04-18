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
<link href="ImageDisplay.css" rel="stylesheet" type="text/css">
</head>
    <body>
    <jsp:include page="Banner.jsp" />
    <%
    List<Collection> Collections = DBUtil.getAllCollections();
    for (int i=0; i < Collections.size(); i++){
    %>

		<div class="image">
		<img src="<%out.print(Collections.get(i).getCollectionThumbnail()); %>" class="pillow" style="width: 100%">
        <div class= "centered">
                    <h1 id= "lo"><%out.print("<p>" + Collections.get(i).getCollectionName() + "<p>"); %></h1><br /><br /><br /><br />
                </div>        
	<%}%>
	</body>
</html>
