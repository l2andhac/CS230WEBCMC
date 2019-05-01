<%@page language="java" import="cmc.controller.*" import="cmc.entity.*"
	import="cmc.interaction.*"%>
	<%
	AdminInteraction ai = (AdminInteraction)session.getAttribute("ai");
	String error = request.getParameter("Error");
	if(error != null && error.equals("1")){
		ai.logOff();
		response.sendRedirect("../index.jsp?Error=1");
		return;
	}
	ai.logOff();
	response.sendRedirect("../index.jsp");
	%>
