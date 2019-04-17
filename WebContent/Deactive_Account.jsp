<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.controller.*" import="cmc.entity.*" import="cmc.interaction.*"%>
    
<%@include file="verifyLogin.jsp" %>

<%
AdminInteraction ai = (AdminInteraction) session.getAttribute("ai");


	//String fn = request.getParameter("FirstName");
	//String ln = request.getParameter("LastName");
	String u = request.getParameter("Username");
	//String p = request.getParameter("Password");
	//String t = request.getParameter("Type");
	//String s = request.getParameter("Status");
	Account a = ai.viewAccountInfo(u);
	String fn = a.getFirstName();
	String ln = a.getLastName();
	String p = a.getPassword();
	char type = a.getUserType();
	char status = a.getStatus();

	if (status != 'N') {
		ai.editAccountInfo(u, fn, ln, p, type, 'N');
		response.sendRedirect("ManageUsers.jsp");
	} else {
		ai.editAccountInfo(u, fn, ln, p, type, status);
		response.sendRedirect("ManageUsers.jsp");
	}
%>