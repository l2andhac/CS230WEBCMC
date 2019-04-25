<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Request a new account</title>
</head>
<body style="background-image: url(images/book.jpg); background-repeat: no-repeat; background-size: cover;">
<a href="index.jsp">Back to Login Page<br></a>
<%
		String anyErrors = (String) request.getAttribute("Error");
		if (anyErrors != null) { %>
		<i style="color:red">
		<%
			out.println(anyErrors);
		}
		%>
		</i><br>
	REQUEST OF A NEW ACCOUNT
	<br> Fill in the form below to request your account.
	<br> Your request will be pending until one of our administrator
	approves your request.
	<br>
	<form action="RequestAccount_action.jsp" name="RequestNewAccount">
		<table style="text-align: left; height: 130px; width: 394px;"
			border="1" cellpadding="2" cellspacing="2">
			<tbody>
				<tr>
					<td style="vertical-align: top; width: 188px; height: 31px;">First
						Name<br>
					</td>
					<td style="vertical-align: top; width: 186px; height: 31px;"><input
						name="fName"><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top; width: 188px; height: 30px;">Last
						Name<br>
					</td>
					<td style="vertical-align: top; width: 186px; height: 30px;"><input
						name="lName"><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top; width: 188px; height: 29px;">Username<br>
					</td>
					<td style="vertical-align: top; width: 186px; height: 29px;"><input
						name="username"><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top; width: 188px; height: 28px;">Password<br>
					</td>
					<td style="vertical-align: top; width: 186px; height: 28px;"><input
						name="password"><br></td>
				</tr>
				<tr>
					<td style="vertical-align: top; width: 188px; height: 30px;"><input
						name="Submit" value="Submit" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input name="Reset" value="Reset" type="reset"><br></td>
					<td style="vertical-align: top; width: 186px; height: 30px;"><br>
					</td>
				</tr>
			</tbody>
		</table>
		<br>
	</form>

</body>
</html>
