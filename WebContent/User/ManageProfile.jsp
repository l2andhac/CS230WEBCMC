<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="cmc.controller.*" import="cmc.entity.*"
	import="cmc.interaction.*" import="java.util.*"%>

<%@include file="../verifyLogin.jsp"%>
<html>
<head>
<script>
function validateForm(){
	var x = document.forms["editUser"]["FirstName"].value;
	var y = document.forms["editUser"]["LastName"].value;
	var z = document.forms["editUser"]["Password"].value;
	if(x == "" || y == "" || z == ""){
		alert("Please fill out all the fields");
		return false;
	}
}
</script>

<title>Edit User Form</title>
</head>
<body style="background-image: url(images/pencils.jpg); background-repeat: no-repeat; background-size: cover;">
<a href="UserMenu.jsp">Return to menu</a>
	<br> Edit User form:
	<br>

	<%
		UserInteraction ui = (UserInteraction) session.getAttribute("ai");
		if(ui == null){
			out.println("ui is null");
		}
		User eUser = ui.getAccount();


		%>
		
	<form method="post" action="Edit_User_Action.jsp" name="editUser" onsubmit="return validateForm()">
		<br>
		<table style="text-align: left; width: 266px; height: 228px;"
			border="1">
			<tbody>
				<tr>
					<td style="vertical-align: top;">First Name<br>
					</td>
					<%
						out.println("<td style=\"vertical-align: top;\"><input name=\"FirstName\" value=" + eUser.getFirstName()
								+ "><br></td>");
					%>
					
				</tr>
				<tr>
				<tr>
					<td style="vertical-align: top;">Last Name<br>
					</td>
					<%
						out.println("<td style=\"vertical-align: top;\"><input name=\"LastName\" value=" + eUser.getLastName()
								+ "><br>");
					%>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Username<br>
					</td>
					<%
						out.println("<td style=\"vertical-align: top;\"><input name=\"Username\" value=" + eUser.getUsername()
								+ " readonly>");
					%>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Password<br>
					</td>
					<%
						out.println("<td style=\"vertical-align: top;\"><input name=\"Password\" value=" + eUser.getPassword()
								+ "> </td>");
					%>
				</tr>
				<tr>
					<td style="vertical-align: top;">Type<br>
					</td>
					<%
						out.println("<td style=\"vertical-align: top;\"><input name=\"Type\" value=" + eUser.getUserType()
								+ " readonly>");
					%>
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
	<a href="RequestforDeactivation_action.jsp">Request for Account
		Deactivation</a>
	<br>

</body>
</html>
