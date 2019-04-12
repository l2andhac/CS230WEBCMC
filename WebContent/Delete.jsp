<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.controller.*" import="cmc.entity.*" import="cmc.interaction.*"%>
    
<%@include file="verifyLogin.jsp" %>

<%
//AccountInteraction ai = (AccountInteraction)session.getAttribute("ai");
//User dUser = ai.getSpecificUser(request.getParameter("Username"));
//ai.removeAccount(dUser);
    
response.sendRedirect("ManageUsers.jsp");
%>