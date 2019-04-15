<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="cmc.controller.*" import="cmc.entity.*"
	import="cmc.interaction.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
<title>AddAccount</title>
</head>
<body>
	<form action="AddAccount_action.jsp" name="AddAccountForm">
		<big><big><big>Enter the information of the account
					to add</big></big></big><br> <br>
		<table style="text-align: left; width: 656px; height: 313px;"
			border="1" cellpadding="2" cellspacing="2">
			<tbody>
				<tr>
					<td style="vertical-align: top;"><big>First Name<br>
					</big></td>
					<td style="vertical-align: top;"><input name="FirstName"><br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;"><big>Last Name<br>
					</big></td>
					<td style="vertical-align: top;"><input name="LastName"><br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;"><big>Username<br>
					</big></td>
					<td style="vertical-align: top;"><input name="Username"><br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;"><big>Password<br>
					</big></td>
					<td style="vertical-align: top;"><input name="Password"><br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;"><big>Type of Account
							('u' for user&nbsp; 'a' for admin)<br>
					</big></td>
					<td style="vertical-align: top;"><input name="Type"><br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;"><big>Status<br>
					</big></td>
					<td style="vertical-align: top;"><input name="Status"
						value="Y"><br></td>
				</tr>
				<tr>
				<td style="vertical-align: top;"><input value="Add" name="Add"
					type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td style="vertical-align: top;"><input value="Reset"
					name="Reset" type="reset"></td>
				</tr>
			</tbody>
		</table>
		<br>
	</form>
</body>
</html>