<%@page language="java" import="cmc.controller.*" import="cmc.entity.*"
	import="cmc.interaction.*"%>
	<%
	UserInteraction ui = (UserInteraction)session.getAttribute("ai");
	ui.logOff();
	response.sendRedirect("index.jsp");
	%>