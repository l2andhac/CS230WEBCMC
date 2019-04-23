<html>
<head>




<title>Login Form</title>
<style type="text/css">
</style>
</head>
<body
	style="background-image: url(images/chalk.jpg); background-repeat: no-repeat; background-size: cover;">
	<h1 style="color:white;">Welcome to CMC</h1>

	<br><h3  style="color:white;"  > Login: </h3>
	<br>
	<br>
	<%
		String anyErrors = (String) request.getAttribute("Error");
		String person = request.getParameter("name");
		if (anyErrors != null) { %>
		<i style="color:red">
		<%
			out.println(anyErrors);
		}
		%>
		</i>
		<%-- if (anyErrors != null && anyErrors.equals("")) {
			out.println("Incorrect information was given<br>");
		}
		if (anyErrors != null && anyErrors.equals("2")) {
			out.println("Account status is not valid<br>");
		}
		if (anyErrors != null && anyErrors.equals("3")) {
			out.println("Account must be logged in in order to access that page<br>");
		}
		if (anyErrors != null && anyErrors.equals("4")) {
			out.println("Username is not an email, so a new password will not be sent<br>");
		}--%>
		
		

	<form method="post" action="Login_action.jsp" name="Login">
		<br>
		<table style="text-align: left; width: 266px; height: 228px;"
			border="1" cellpadding="2" cellspacing="2">
			<tbody>
				<tr>
					<td style="color:white;">Username<br>
					</td>
					<td><input name="Username">
					</td>
				</tr>
				<tr>
					<td style="color:white;">Password<br>
					</td>
					<td><input name="Password"
						type="password"></td>
				</tr>

				<td style="vertical-align: top;"><input value="Log in"
					name="Log in" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td style="vertical-align: top;"><input value="Reset"
					name="Reset" type="reset"></td>
				</tr>
			</tbody>
		</table>
		<br> <a href="ForgotPassword.jsp">Forgot password</a> <br> <a
			href="RequestAccount.jsp">Request New Account</a><br>
	</form>
</body>
</html>