<%// AUTHENTICATION
Integer uid = (Integer)session.getAttribute("sessionID");
if (uid == null) {
%>

<!-- <jsp:forward page="index.jsp"/> -->

<!-- HERE WE ARE INVALIDATE THE SESSION, SO THAT NO VALUES WILL BE PRESENT IN SESSION -->
<% session.invalidate(); %> 
<jsp:forward page="index.jsp"/>
<% }//END AUTHENTICATION %>