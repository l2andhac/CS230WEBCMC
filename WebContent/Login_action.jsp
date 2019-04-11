

<%@page language="java" import="cmc.controller.*" import="cmc.entity.*" import="cmc.interaction.*"%>
<%  
	AccountInteraction ai= new AccountInteraction();
	String un = request.getParameter("Username");
	String p = request.getParameter("Password");
	
	AccountInteraction account = ai.logOn(un, p);
	
	if(account != null){
		session.setAttribute("ai", ai);
		if(account instanceof UserInteraction){
		response.sendRedirect("UserMenu.jsp");
		}
		else{
		response.sendRedirect("AdminMenu.jsp");
		}
	}
	
	//incorrect information was given
	//else if(...){
	//	response.sendRedirect("index.jsp?Error=1");
	//}
	
	//account status is not valid
	//else if (...){
	//	response.sendRedirect("index.jsp?Error=2");
	//}
	
	
%>

