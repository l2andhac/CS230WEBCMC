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
if(ai == null){
	out.println("ai is null");
}
String u = request.getParameter("Username");
User user = (User) ai.viewAccountInfo(u);
%>
<form method="post" action="Edit_action.jsp" name="EditAccount">
		<br>
		<table style="text-align: left; width: 266px; height: 228px;"
			border="1" cellpadding="2" cellspacing="2">
			<tbody>
			    <tr>
					<td style="vertical-align: top;">First Name<br>
					</td>
					<td style="vertical-align: top;"><input name="FirstName" value = <%out.print(fn);%>>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Last Name<br>
					</td>
					<td style="vertical-align: top;"><input name="LastName" value = <%out.println(a.getLastName());%>>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Username<br>
					</td>
					<td style="vertical-align: top;"><input disabled="disabled" name="Username" value = <%out.println(a.getUsername());%>>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Password<br>
					</td>
					<td style="vertical-align: top;"><input name="Password" value = <%out.println(a.getPassword());%>>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Type<br>
					</td>
					<td style="vertical-align: top;"><input name="Type" value = <%out.println(a.getUserType());%>>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Status<br>
					</td>
					<td style="vertical-align: top;"><input name="Status" value = <%out.println(a.getStatus());%>>
					</td>
				</tr>

				<td style="vertical-align: top;"><input value="Edit Account"
					name="EditAccount" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td style="vertical-align: top;"><input value="Reset"
					name="Reset" type="reset"></td>
				</tr>
			</tbody>
		</table>
		<br>
	</form>
</body>
</html>