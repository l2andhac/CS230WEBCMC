<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="cmc.controller.*" import="cmc.entity.*"
	import="cmc.interaction.*" import="java.util.*" import="javax.mail.*"
	import="javax.mail.internet.*" import="java.lang.Math"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
	function validateForm() {
		var v = document.forms["ForgotPassForm"]["ForgotPassUsername"].value;

		if (v == "") {
			alert("Please fill out all the fields");
			return false;
		}
	}
</script>
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
<title>ForgotPassword</title>
</head>
<body
	style="background-image: url(images/book.jpg); background-repeat: no-repeat; background-size: cover;">
	<a href="index.jsp">Return to Login page</a>
	<br>
	<br>
	<%
		String anyErrors = (String) request.getAttribute("Error");
		if (anyErrors != null) {
	%>
	<i style="color: red"> <%
 	out.println(anyErrors);
 	}
 %>
	</i>
	<br>
	<span style="font-family: Bitstream Charter;">FORGOT PASSWORD</span>
	<br style="font-family: Bitstream Charter;">
	<span style="font-family: Bitstream Charter;">&nbsp;&nbsp;&nbsp;
		If you forgot your password, please enter your <b>email username</b>
		and your password will be reset and sent to you.
	</span>
	<br style="font-family: Bitstream Charter;">
	<span style="font-family: Bitstream Charter;">&nbsp;&nbsp;&nbsp;
		Please login to your account and change your password immediately
		after receiving the new one for security purposes.</span>
	<br>
	<br>
	<form method="post" action="ForgotPassword_action.jsp"
		name="ForgotPassForm" onsubmit="return validateForm()">
		<input name="ForgotPassUsername" size="30" placeholder="jdoe@addr.com"
			type="text">  <input value="Submit"
			name="ForgotPassSubmit" type="submit"><br>

	</form>
</body>
</html>