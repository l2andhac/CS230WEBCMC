<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@include file="verifyLogin.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search For Friends</title>
</head>
<body style="background-image: url(images/book.jpg); background-repeat: no-repeat; background-size: cover;">
<a href="UserMenu.jsp">Return to menu</a><br>
Search For a Friend's Saved Schools By Entering Their Username:
<br>
	<%
		String anyErrors = (String) request.getAttribute("Error");
		if (anyErrors != null) { %>
		<i style="color:red">
		<%
			out.println(anyErrors);
		}
		%>
		</i>
		<br>
<form action="SearchForFriendsAction.jsp">
<table>
	<tr> 
		<td>USERNAME:</td>
		<td><input type="text" name="Username"></td>
	</tr>
</table>
<button type="submit">SEARCH</button>
</form>
</body>
</html>