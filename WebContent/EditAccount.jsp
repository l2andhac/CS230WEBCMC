<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="cmc.controller.*" import="cmc.entity.*"
	import="cmc.interaction.*" import="java.util.*"%>

<%@include file="verifyLogin.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Account</title>
</head>
<body>
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
<form method="post" action="Edit_action.jsp" name="EditAccount">
		<br>
		<table style="text-align: left; width: 266px; height: 228px;"
			border="1" cellpadding="2" cellspacing="2">
			<tbody>
			   <tr>
					<td style="vertical-align: top;">First Name<br>
					</td>
					<%
						out.println("<td style=\"vertical-align: top;\"><input name=\"FirstName\" value=" + a.getFirstName()
								+ "><br></td>");
					%>
					
				</tr>
				<tr>
				<tr>
					<td style="vertical-align: top;">Last Name<br>
					</td>
					<%
						out.println("<td style=\"vertical-align: top;\"><input name=\"LastName\" value=" + a.getLastName()
								+ "><br>");
					%>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Username<br>
					</td>
					<%
						out.println("<td style=\"vertical-align: top;\"><input name=\"Username\" value=" + a.getUsername()
								+ " readonly>");
					%>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Password<br>
					</td>
					<%
						out.println("<td style=\"vertical-align: top;\"><input name=\"Password\" value=" + a.getPassword()
								+ "> </td>");
					%>
				</tr>
				<tr>
					<td style="vertical-align: top;">Type<br>
					</td>
					<%
						out.println("<td style=\"vertical-align: top;\"><input name=\"Type\" value=" + a.getUserType());
					%>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Status<br>
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
	<a href="Deactive_Account.jsp">Deactivate Account</a>
	<br>
</body>
</html>