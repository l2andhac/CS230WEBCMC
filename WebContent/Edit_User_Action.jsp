<%@page language="java" import="cmc.controller.*" import="cmc.entity.*" import="cmc.interaction.*"%>
<%
    UserInteraction ui = (UserInteraction) session.getAttribute("ai");
	String fn = request.getParameter("FirstName");
	String ln = request.getParameter("LastName");
	String u = request.getParameter("Username");
	String p = request.getParameter("Password");
	String t = request.getParameter("Type");
	String s = request.getParameter("Status");

	    ui.editAccountInfo(fn, ln, s);
	    response.sendRedirect("EditUser.jsp");
	
%>