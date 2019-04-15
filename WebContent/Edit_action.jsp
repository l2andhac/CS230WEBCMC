<%@page language="java" import="cmc.controller.*" import="cmc.entity.*" import="cmc.interaction.*"%>
<%
	AccountInteraction ai = new AccountInteraction();
	String fn = request.getParameter("FirstName");
	String ln = request.getParameter("LastName");
	String u = request.getParameter("Username");
	String p = request.getParameter("Password");
	String t = request.getParameter("Type");
	String s = request.getParameter("Status");
	if(t.charAt(0) == 'u'){
		AdminInteraction adInt = (AdminInteraction) ai;
	    adInt.editAccountInfo(fn, ln, u, p, t.charAt(0), s.charAt(0));
	    response.sendRedirect("EditUser.jsp");
	}
	else if(t.charAt(0) == 'a'){
		UserInteraction ui = (UserInteraction) ai;
		ui.editAccountInfo(fn, ln, p);
		response.sendRedirect("EditAccount.jsp");
	}
	else{
		
	}
%>