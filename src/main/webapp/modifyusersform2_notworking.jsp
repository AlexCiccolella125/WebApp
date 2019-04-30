<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="edu.fau.group3.util.DBUtil"
	import="edu.fau.group3.model.User" 
	import="java.util.List"
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form>
	<table id="userTable">
		<tr>
			<th>Email</th>
			<th>Name</th>
			<th>Last name</th>
			<th>Password</th>
			<th>Phone</th>
			<th>AdminStatus</th>
		</tr>
	<%
	List<User> userList = DBUtil.getAllUsers();
	for (int index=0; index < userList.size(); index++){ 
		String AdminStatus = null;
		int ID = userList.get(index).getUserId();
		if(userList.get(index).getAdminStatus()){
			AdminStatus = "checked = checked";
		}
	%>
		<tr>
			<td><input id="EM<%=ID%>" type="text" value="<%=userList.get(index).getEmail()%>"></td>
			<td><input id="FN<%=ID%>" type="text" value="<%=userList.get(index).getFirstName()%>"></td>
			<td><input id="LN<%=ID%>" type="text" value="<%=userList.get(index).getLastName()%>"></td>
			<td><input id="PW<%=ID%>" type="text" value="<%=userList.get(index).getPassword()%>"></td>
			<td><input id="PH<%=ID%>" type="text" value="<%=userList.get(index).getPhone()%>"></td>
			<td> <input type = "checkbox" name = "AdminStatus" <%=AdminStatus %> /> AdminStatus<td>
		    <td> <button onclick="updateRow(<%= ID%>)">Update </button></td>
			<!-- 		<td> <input type = "submit" value = "Delete" /></td> -->
	<%}%>
		</tr>
		</table>
		</form>
		<script type="text/javascript">
			function updateRow(rowID){
				//?UploadType=ModifyUser
				var form = document.createElement("form");
				document.body.appendChild(form);
				form.setAttribute("action", 'Upload.jsp');
				form.setAttribute("method", 'POST');	
				var UserFirstName = document.getElementById("FN" + rowID);
				var UserLastName= document.getElementById("LN" + rowID);
				var UserEmail = document.getElementById("EM" + rowID);
				var UserPassword = document.getElementById("PW" + rowID);
				var UserPhone = document.getElementById("PH" + rowID);
				
				var hiddenField = document.createElement("input");
	            hiddenField.setAttribute("name", "FN3");
	            hiddenField.setAttribute("value", document.getElementById("FN" + rowID).value);
	            form.appendChild(hiddenField);
	            
				alert("tag 5");
				
			    //document.body.appendChild(form);
			    form.appendChild(UserFirstName);
			    alert("addedUserFirstName");
				form.appendChild(UserLastName);
				form.appendChild(UserEmail);
				form.appendChild(UserPassword);
				form.appendChild(UserPhone);
				
	            alert("tag 6");
			    form.submit();
			    alert("tag 7");
			    //document.body.removeChild(form);
			    
			}
		</script>
</body>
</html>
