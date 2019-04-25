<%@page language="java" import="cmc.controller.*" import="cmc.entity.*"
	import="cmc.interaction.*"%>
	
	<%@include file="../verifyLogin.jsp" %>
	
<%
try{
String fn = request.getParameter("FirstName");
String ln = request.getParameter("LastName");
String u = request.getParameter("Username");
String p = request.getParameter("Password");
String t = request.getParameter("Type");
String s = request.getParameter("Status");

AdminInteraction ai = (AdminInteraction)session.getAttribute("ai");
boolean duplicate = false;
//for(Account user:ai.viewAllAccounts()){
	//if (user.getUsername().equals(u))
	//{
	//	duplicate = true;
	//	response.sendRedirect("AdminMenu.jsp?Error=1");
	//}
//}


ai.addAccount(fn, ln, u, p, t.charAt(0), s.charAt(0));
if(duplicate == false){
  response.sendRedirect("ManageUsers.jsp");
}
} catch(Exception e){
	String err = e.getMessage();
	request.setAttribute("Error", err);
    request.getRequestDispatcher("AddAccount.jsp").forward(request, response); 
}

%>