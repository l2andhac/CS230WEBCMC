<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="cmc.interaction.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Menu</title>
</head>
<body>
<a href="LogOffAdmin.jsp">Log off</a>
<br>
<br>
<%
		AdminInteraction ai = (AdminInteraction) session.getAttribute("ai");
	%>
Welcome to the Admin Page, <%=ai.getUsername()%>
<br>
<a href="ManageUniversities.jsp">Manage Universities</a>
<br>
<a href="ManageUsers.jsp">Manage Users</a>
<br>
</body>
</html>