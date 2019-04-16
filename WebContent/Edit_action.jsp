<%@page language="java" import="cmc.controller.*" import="cmc.entity.*" import="cmc.interaction.*"%>
<%
    AdminInteraction ai = (AdminInteraction) session.getAttribute("ai");
	String fn = request.getParameter("FirstName");
	String ln = request.getParameter("LastName");
	String u = request.getParameter("Username");
	String p = request.getParameter("Password");
	String t = request.getParameter("Type");
	String s = request.getParameter("Status");
	
		ai.editAccountInfo(u, fn, ln, p, t.charAt(0), s.charAt(0));
	    response.sendRedirect("ManageProfile.jsp");

%>