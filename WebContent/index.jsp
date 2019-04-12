<html>
<head>

<title>Login Form</title>
</head>
<body>
	<br> Login form:
	<br>
	<br>
	<%
		String anyErrors = request.getParameter("Error");
		String person = request.getParameter("name");
		if (anyErrors != null && anyErrors.equals("1")) {
			out.println("Incorrect information was given<br>");
		}
		if (anyErrors != null && anyErrors.equals("2")) {
			out.println("Account status is not valid<br>");
		}
		if (anyErrors != null && anyErrors.equals("3")) {
			out.println("Account must be logged in in order to access that page<br>");
		}
	%>
	<form method="post" action="Login_action.jsp" name="Login">
		<br>
		<table style="text-align: left; width: 266px; height: 228px;"
			border="1" cellpadding="2" cellspacing="2">
			<tbody>
				<tr>
					<td style="vertical-align: top;">Username<br>
					</td>
					<td style="vertical-align: top;"><input name="Username">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Password<br>
					</td>
					<td style="vertical-align: top;"><input name="Password">
					</td>
				</tr>

				<td style="vertical-align: top;"><input value="Log in"
					name="Log in" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td style="vertical-align: top;"><input value="Reset"
					name="Reset" type="reset"></td>
				</tr>
			</tbody>
		</table>
		<br>
	</form>
	<br>
</body>
</html>