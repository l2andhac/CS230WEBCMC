<%@ page language="java" import="cmc.interaction.*" import="cmc.entity.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%UserInteraction ui = (UserInteraction) session.getAttribute("ai");
String fn = request.getParameter("FirstName");
String ln = request.getParameter("LastName");
String u = request.getParameter("Username");
String p = request.getParameter("Password");
String t = request.getParameter("Type");
String s = request.getParameter("Status");
%>
<form method="post" action="Edit_User_Action.jsp" name="EditUser">
		<br>
		<table style="text-align: left; width: 266px; height: 228px;"
			border="1" cellpadding="2" cellspacing="2">
			<tbody>
			    <tr>
					<td style="vertical-align: top;">FirstName<br>
					</td>
					<td style="vertical-align: top;"><input name="FirstName" value = <%out.println(fn);%>>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">LastName<br>
					</td>
					<td style="vertical-align: top;"><input name="LastName" value = <%out.println(ln);%>>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Username<br>
					</td>
					<td style="vertical-align: top;"><input disabled="disabled" name="Username" value = <%out.println(u);%>>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Password<br>
					</td>
					<td style="vertical-align: top;"><input name="Password" value = <%out.println(p);%>>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Type<br>
					</td>
					<td style="vertical-align: top;"><input disabled="disabled" name="Type" value = <%out.println(t);%>>
					</td>
				</tr>

				<td style="vertical-align: top;"><input value="Edit User"
					name="EditUser" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td style="vertical-align: top;"><input value="Reset"
					name="Reset" type="reset"></td>
				</tr>
			</tbody>
		</table>
		<br>
	</form>
</body>
</html>