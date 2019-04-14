

<%@page language="java" import="cmc.controller.*" import="cmc.entity.*" import="cmc.interaction.*"%>
<%  
	AccountInteraction aci= new AccountInteraction();
	String un = request.getParameter("Username");
	String p = request.getParameter("Password");
	
	session.setAttribute("aci", aci);
	AccountInteraction account = aci.logOn(un, p);
	
	
	if(account != null){
		if(account instanceof UserInteraction){
			session.setAttribute("ai", (UserInteraction) account);
			session.setAttribute("interactionType", "User");
		response.sendRedirect("UserMenu.jsp");
		}
		else{
			session.setAttribute("ai", (AdminInteraction) account);
			session.setAttribute("interactionType", "Admin");
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

