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
	  userInteraction = (UserInteraction)session.getAttribute("ai");  
	  if (userInteraction == null || userInteraction.getAccount().isLoggedOn() == false){
		   response.sendRedirect("../index.jsp?Error=3");
		   return;
	   }
  }
  else{
	  	   response.sendRedirect("../Admin/LogOffAdmin.jsp?Error=1");
		   return;
  } 
  

   
%>