<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.controller.*" import="cmc.entity.*" import="cmc.interaction.*"%>
    
<%@include file="verifyLogin.jsp" %>

<%
UserInteraction ai = (UserInteraction) session.getAttribute("ai");
ai.requestDeactivation();
response.sendRedirect("ManageProfile.jsp");
%>