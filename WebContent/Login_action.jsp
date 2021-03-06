<%@page language="java" import="cmc.controller.*" import="cmc.entity.*" import="cmc.interaction.*"
errorPage="error.jsp"%>
<%  
try{
	AccountInteraction aci= new AccountInteraction();
	String un = request.getParameter("Username");
	String p = request.getParameter("Password");
	
	session.setAttribute("aci", aci);
	AccountInteraction account = aci.logOn(un, p);
	session.setAttribute("aci", account);
	
	
	if(account != null){
		if(account instanceof UserInteraction){
			session.setAttribute("ai", (UserInteraction) account);
			session.setAttribute("interactionType", "User");
		response.sendRedirect("User/UserMenu.jsp");
		}
		else{
			session.setAttribute("ai", (AdminInteraction) account);
			session.setAttribute("interactionType", "Admin");
		response.sendRedirect("Admin/AdminMenu.jsp");
		}
	}
	} catch (Exception e){
		String err = e.getMessage();
		request.setAttribute("Error", err);
        request.getRequestDispatcher("index.jsp").forward(request, response);   
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