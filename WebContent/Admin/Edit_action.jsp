<%@page language="java" import="cmc.controller.*" import="cmc.entity.*" import="cmc.interaction.*"%>
<%
try{
    AdminInteraction ai = (AdminInteraction) session.getAttribute("ai");
	String fn = request.getParameter("FirstName");
	String ln = request.getParameter("LastName");
	String u = request.getParameter("Username");
	String p = request.getParameter("Password");
	String t = request.getParameter("Type");
	String s = request.getParameter("Status");
	//char type = t.charAt(0);
	//char status = s.charAt(0);
	
		ai.editAccountInfo(u, fn, ln, p, t.charAt(0), s.charAt(0));
	    response.sendRedirect("AdminMenu.jsp");
}catch(Exception e){
	String err = e.getMessage();
	request.setAttribute("Error", err);
    request.getRequestDispatcher("EditAccount.jsp").forward(request, response);   
}

%>