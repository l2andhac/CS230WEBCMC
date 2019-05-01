<%@page language="java" import="cmc.controller.*" import="cmc.entity.*"
	import="cmc.interaction.*"%>
	<%
	UserInteraction ui = (UserInteraction)session.getAttribute("ai");
	String error = request.getParameter("Error");
	if(error != null && error.equals("0")){
		ui.logOff();
		response.sendRedirect("../index.jsp?Error=0");
		return;
	}
	ui.logOff();
	response.sendRedirect("../index.jsp");
	%>