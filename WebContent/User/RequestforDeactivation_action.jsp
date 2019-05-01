<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.controller.*" import="cmc.entity.*" import="cmc.interaction.*"%>
    
<%@include file="../verifyLogin.jsp" %>

<%
try{
UserInteraction ai = (UserInteraction) session.getAttribute("ai");
ai.requestDeactivation();
response.sendRedirect("UserMenu.jsp");
}catch(Exception e){
	out.println(e.getMessage());
}
%>