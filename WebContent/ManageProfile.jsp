<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.controller.*" import="cmc.entity.*" import="cmc.interaction.*"
	import="java.util.*"%>

	<%@include file="verifyLogin.jsp" %>
<html>
<head>

<title>Edit User Form</title>
</head>
<body>
<br>
Edit User form:<br>
<br>

<%
	UserInteraction ui = (UserInteraction)session.getAttribute("ai");
	Account eUser = ui.getAccount();
	
    //out.println("Edit user : " + request.getParameter("Username"));
%>

<form method="post" action="Edit_action.jsp" name="editUser"><br>
<table style="text-align: left; width: 266px; height: 228px;"
border="1" >
<tbody>
<tr>
<td style="vertical-align: top;">First Name<br>
</td>
<%out.println("<td style=\"vertical-align: top;\"><input name=\"FirstName\" value="+eUser.getFirstName()+"><br>");%>
</td>
</tr>
<tr>
<tr>
<td style="vertical-align: top;">Last Name<br>
</td>
<%out.println("<td style=\"vertical-align: top;\"><input name=\"LastName\" value="+eUser.getLastName()+"><br>");%>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Username<br>
</td>
<%out.println("<td style=\"vertical-align: top;\"><input name=\"Username\" value=" + eUser.getUsername() +" readonly>");%> 
</td>
</tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
<% out.println("<td style=\"vertical-align: top;\"><input name=\"Password\" value="+eUser.getPassword()+"> </td>");%>
</tr>
<tr>
<td style="vertical-align: top;">Type<br>
</td>
<% out.println("<td style=\"vertical-align: top;\"><input name=\"Type\" value="+eUser.getUserType()+" readonly>");%>
</td>
</tr>

<tr>
<td style="vertical-align: top;"><input value="Edit"
name="Edit" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td style="vertical-align: top;"><input value="Reset"
name="Reset" type="reset"></td>
</tr>
</tbody>
</table>
<br>
</form>
<br>
<br>
<br>
<a href="RequestforDeactivation_action.jsp">Request for Account Deactivation</a>
<br>

</body>
</html>