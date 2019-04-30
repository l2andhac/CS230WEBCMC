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
<body style="background-image: url(images/chalk.jpg); background-repeat: no-repeat; background-size: cover;">
	<section id="container">
	<header class="lights">
	<div id="light"></div>
	<h1 style="color: white; font-family: cursive; text-align:center;">Welcome to CMC</h1>
	</header>
	
	<br>
	
	<%
		String anyErrors1 = (String) request.getAttribute("Error");
		String anyErrors = request.getParameter("Error");
		String person = request.getParameter("name");
		if (anyErrors1 != null) {
	%>
	<big><i style="color: white"> <%
 	out.println(anyErrors1);
 	}
 %>
	</i></big>
	<%  if (anyErrors != null && anyErrors.equals("2")) {
			out.println("Account status is not valid<br>");
		}
		if (anyErrors != null && anyErrors.equals("3")) {
			out.println("Account must be logged in in order to access that page<br>");
		}
		if (anyErrors != null && anyErrors.equals("4")) {
			out.println("Username is not an email, so a new password will not be sent<br>");
		}%>


<br>
<nav id="menu">
	
<div id="connexion-box" role="presentation">
<div><h3 style="color: white; text-align:center;">Log in:</h3></div>
<div role="presentation">
	<form method="post" action="Login_action.jsp" name="Login"
		onsubmit="return validateForm()" >
		<div id="userNameArea" style="text-align:center;">
			<input name="Username" placeholder="Username">
		</div>
		<br>
		<div id="passwordArea" style="text-align:center;">
			<input name="Password" placeholder="Password" type="password">

		</div>
		<br>
		<div style="text-align:center;">
		<input value="Log in"
						name="Log in" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input value="Reset"
						name="Reset" type="reset">
		</div>
		
		<br><h4 style="text-align:center;"><small style="text-align:center;"><a href="ForgotPassword.jsp">Forgot password?</a></small></h4>
		 <h4 style="text-align:center;"><small style="text-align:center;"><a href="User/RequestAccount.jsp">Request New Account</a></small></h4>
		 <br>
	</form>
	</div>

	</div>
	</nav>
	</section>
</body>
</html>