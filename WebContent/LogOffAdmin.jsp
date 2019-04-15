<%@page language="java" import="cmc.controller.*" import="cmc.entity.*"
	import="cmc.interaction.*"%>
	<%
	AdminInteraction ai = (AdminInteraction)session.getAttribute("ai");
	ai.logOff();
	response.sendRedirect("index.jsp");
	%>
