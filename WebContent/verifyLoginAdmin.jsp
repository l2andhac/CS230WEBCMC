<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.controller.*" import="cmc.entity.*" import="cmc.interaction.*"%>
<%
   AccountInteraction accountInteraction = (AccountInteraction)session.getAttribute("ai");
	if (accountInteraction == null){
	   response.sendRedirect("../index.jsp?Error=3");
	   return;
	}
    UserInteraction userInteraction; 
    AdminInteraction adminInteraction;

  if(session.getAttribute("interactionType").equals("User")){
		response.sendRedirect("../User/LogOffUser.jsp?Error=0");
		return;
  }
  else{
	  adminInteraction = (AdminInteraction)session.getAttribute("ai");
	  if (adminInteraction == null || adminInteraction.getAccount().isLoggedOn() == false){
		   response.sendRedirect("../index.jsp?Error=3");
		   return;
	   }
  } 
  

   
%>