<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
	function validateForm() {
		var x = document.forms["RequestNewAccount"]["fName"].value;
		var y = document.forms["RequestNewAccount"]["lName"].value;
		var w = document.forms["RequestNewAccount"]["username"].value;
		var z = document.forms["RequestNewAccount"]["password"].value;
		if (x == "" || y == "" || z == "" || w == "") {
			alert("Please fill out all the fields");
			return false;
		}
	}
</script>

</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Request a new account</title>
</head>
<body
	style="background-image: url(../images/book.jpg); background-repeat: no-repeat; background-size: cover;">
	<a href="../index.jsp">Back to Login Page<br></a>
	<%
		String anyErrors = (String) request.getAttribute("Error");
		if (anyErrors != null) {
	%>
	<i style="color: red"> <%
 	out.println(anyErrors);
 	}
 %>
	</i>
	<br> REQUEST OF A NEW ACCOUNT
	<br> Fill in the form below to request your account.
	<br> Your request will be pending until one of our administrator
	approves your request.
	<br>
	<br>
	<form method="post" action="RequestAccount_action.jsp"
		name="RequestNewAccount" onsubmit="return validateForm()">
		<pre>
	<label for="" style="font-size:130%">First Name: </label><input name="fName" size="20"><br>
	<label for="" style="font-size:130%">Last Name:  </label><input name="lName" size="20"><br>
	<label for="" style="font-size:130%">Username:   </label><input name="username" size="20"><br>
	<label for="" style="font-size:130%">Password:   </label><input name="password" size="20"><br>
	              <input name="Submit" value="Submit" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="Reset" value="Reset" type="reset"><br>
		<br>
		</pre>
	</form>

</body>
</html>
