<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="cmc.interaction.*, cmc.entity.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Menu</title>
</head>
<body style="background-image: url(images/img2.jpg); background-repeat: no-repeat; background-size: cover;">
<a href="LogOffUser.jsp">Log off</a>
<br>
<br>
<%
		UserInteraction ui = (UserInteraction) session.getAttribute("ai");
User user = ui.getAccount();
	%>
Welcome to the User Page, <%=user.getFirstName()%>

<br>
<a href="ManageProfile.jsp">Manage My Profile</a>
<br>
<a href="ManageSavedSchools.jsp">Manage My Saved Schools</a>
<br>
<a href="Search.jsp">Search for Schools</a>
<br>
<a href="SearchForFriends.jsp">Search For Friends</a>
<br>

</body>
</html>