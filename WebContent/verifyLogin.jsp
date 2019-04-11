<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.controller.*" import="cmc.entity.*" import="cmc.interaction.*"%>
<%
   AccountInteraction accountInteraction = (AccountInteraction)session.getAttribute("ai");
   if (accountInteraction == null || accountInteraction.getAccount().isLoggedOn() == false){
	   response.sendRedirect("index.jsp?Error=3");
	   return;
   }
%>