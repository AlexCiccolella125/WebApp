<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="edu.fau.group3.util.DBUtil"
	import="edu.fau.group3.model.Collection" 
	import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Update.jsp?UpdateType=Collection" method="post">
	<%
	DBUtil util = new DBUtil();
	String name = request.getParameter("CollectionName");
	Collection collection = util.getCollectionByName(name);
	
	int ID = collection.getCollectionID();
	%>
	<br><input name="ID" type="hidden" value="<%=collection.getCollectionID() %>"  />
	<br>Name<input name="Name" type="text" value="<%=collection.getCollectionName()%>">  
	<br>Name<input name="thumbnail" type="text" value="<%=collection.getCollectionThumbnail()%>">
	<br><input type="submit" value="Update">
</form>	
</body>
</html>