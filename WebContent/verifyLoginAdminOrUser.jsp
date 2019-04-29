<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.controller.*" import="cmc.entity.*" import="cmc.interaction.*"%>
<%
   AccountInteraction accountInteraction = (AccountInteraction)session.getAttribute("ai");
  
    UserInteraction userInteraction; 
    AdminInteraction adminInteraction;

  if(session.getAttribute("interactionType").equals("User")){
	  userInteraction = (UserInteraction)session.getAttribute("ai");  
	  if (userInteraction == null || userInteraction.getAccount().isLoggedOn() == false){
		   response.sendRedirect("index.jsp?Error=3");
		   return;
	   }
  }
  else{
	  adminInteraction = (AdminInteraction)session.getAttribute("ai");
	  if (adminInteraction == null || adminInteraction.getAccount().isLoggedOn() == false){
		   response.sendRedirect("index.jsp?Error=3");
		   return;
	   }
  } 
  

   
%>