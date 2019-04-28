<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="cmc.controller.*" import="cmc.entity.*"
	import="cmc.interaction.*" import="java.util.*"%>

<%@include file="../verifyLogin.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
function validateForm(){
	var v = document.forms["EditAccount"]["Type"].value;
	var w = document.forms["EditAccount"]["Status"].value;
	var x = document.forms["EditAccount"]["FirstName"].value;
	var y = document.forms["EditAccount"]["LastName"].value;
	var z = document.forms["EditAccount"]["Password"].value;
	
	if(v == "" || w == "" || x == "" || y == "" || z == ""){
		alert("Please fill out all the fields");
		return false;
	}
	
	else if(w != 'Y' && w != 'N' && w != 'P' && w != 'D'){
		alert("Please enter a valid status");
		return false;
	}
	
	else if(v != 'u' && v != 'a'){
		alert("Please enter a valid type");
		return false;
	}
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Account</title>
</head>
<body style="background-image: url(../images/pens.jpg); background-repeat: no-repeat; background-size: cover;">
<a href=AdminMenu.jsp>Back to Menu<br></a>
<%
	AdminInteraction ai = (AdminInteraction) session.getAttribute("ai");
	if (ai == null) {
		out.println("ai is null");
	}
	String username = request.getParameter("Username");
	Account a = ai.viewAccountInfo(username);
	if (a.getUserType() == 'u') {
		a = (User) ai.viewAccountInfo(username);
	} else if (a.getUserType() == 'a') {
		a = (Admin) ai.viewAccountInfo(username);

	}
%>
<%
		String anyErrors = (String) request.getAttribute("Error");
		if (anyErrors != null) { %>
		<big><i style="color:red">
		<%
			out.println(anyErrors);
		}
		%>
		</i></big>
<form method="post" action="Edit_action.jsp" name="EditAccount" onsubmit="return validateForm()">
		<br>
		<table style="text-align: left; width: 266px; height: 228px;"
			border="0" cellpadding="2" cellspacing="2">
			<tbody>
			   <tr>
					<td style="vertical-align: top;">First Name:<br>
					</td>
					<%
						out.println("<td style=\"vertical-align: top;\"><input name=\"FirstName\" value=" + a.getFirstName()
								+ "><br></td>");
					%>
					
				</tr>
				<tr>
				<tr>
					<td style="vertical-align: top;">Last Name:<br>
					</td>
					<%
						out.println("<td style=\"vertical-align: top;\"><input name=\"LastName\" value=" + a.getLastName()
								+ "><br>");
					%>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Username:<br>
					</td>
					<%
						out.println("<td style=\"vertical-align: top;\"><input name=\"Username\" value=" + a.getUsername()
								+ " readonly>");
					%>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Password:<br>
					</td>
					<%
						out.println("<td style=\"vertical-align: top;\"><input name=\"Password\" value=" + a.getPassword()
								+ "> </td>");
					%>
				</tr>
				<tr>
					<td style="vertical-align: top;">Type:<br>
					</td>
					<%
						out.println("<td style=\"vertical-align: top;\"><input name=\"Type\" value=" + a.getUserType());
					%>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Status:<br>
					</td>
					<%
						out.println("<td style=\"vertical-align: top;\"><input name=\"Status\" value=" + a.getStatus());
					%>
					</td>
				</tr>

				<tr>
					<td style="vertical-align: top;"><input value="Edit"
						name="EditAccount" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td style="vertical-align: top;"><input value="Reset"
						name="Reset" type="reset"></td>
				</tr>
			</tbody>
		</table>
		<br>
	</form>
	<br>
	<br>
</body>
</html>