<html>
<head>
<title>Login Form</title>
<style type="text/css">
</style>
</head>
<script>
	function validateForm() {
		var x = document.forms["Login"]["Username"].value;
		var y = document.forms["Login"]["Password"].value;
		if (x == "" || y == "") {
			alert("Please fill out all the fields");
			return false;
		}
	}
</script>
<body
	style="background-image: url(images/chalk.jpg); background-repeat: no-repeat; background-size: cover;">
	<h1 style="color: white;">Welcome to CMC</h1>

	<br>
	<h3 style="color: white;">Login:</h3>
	<%
		String anyErrors = (String) request.getAttribute("Error");
		String person = request.getParameter("name");
		if (anyErrors != null) {
	%>
	<big><i style="color: white"> <%
 	out.println(anyErrors);
 	}
 %>
	</i></big>
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


<br>
	<form method="post" action="Login_action.jsp" name="Login"
		onsubmit="return validateForm()">
		<div id="userNameArea">
			<input name="Username" placeholder="Username">
		</div>
		<br>
		<div id="passwordArea">
			<input name="Password" placeholder="Password" type="password">

		</div>
		<br>
		<input value="Log in"
						name="Log in" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input value="Reset"
						name="Reset" type="reset">
		<br><br> <a href="ForgotPassword.jsp">Forgot password</a> <br><br> <a
			href="User/RequestAccount.jsp">Request New Account</a><br>
	</form>
</body>
</html>