<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.controller.*" import="cmc.entity.*" import="cmc.interaction.*"%>
    
<%@include file="verifyLogin.jsp" %>

<%
	AdminInteraction ai = (AdminInteraction) session.getAttribute("ai");
	String fn = request.getParameter("FirstName");
	String ln = request.getParameter("LastName");
	String u = request.getParameter("Username");
	String p = request.getParameter("Password");
	String t = request.getParameter("Type");
	String s = request.getParameter("Status");
	char type = t.charAt(0);
	char status = s.charAt(0);

	if (status != 'N') {
		ai.editAccountInfo(u, fn, ln, p, type, 'N');
		response.sendRedirect("AdminMenu.jsp");
	} else {
		ai.editAccountInfo(u, fn, ln, p, type, status);
		response.sendRedirect("EditAccount.jsp");
	}
%>