<%@ page language="java" import="cmc.interaction.*" import="java.util.*"
import="cmc.entity.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<%
try {
UserInteraction ui = (UserInteraction)session.getAttribute("ai");
String u = request.getParameter("Username");
List<SavedSchool> list = ui.searchForFriends(u);
session.setAttribute("FriendList", list);
response.sendRedirect("ViewFriendSchool.jsp");
}catch(Exception e){
	out.println(e.getMessage());
}
%>

</body>
</html>