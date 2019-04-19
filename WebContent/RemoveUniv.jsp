<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.controller.*" import="cmc.entity.*" import="cmc.interaction.*"%>
    
<%@include file="verifyLogin.jsp" %>

<%
try{
AdminInteraction ai = (AdminInteraction) session.getAttribute("ai");
ai.removeSchool(request.getParameter("schoolName"));

    
response.sendRedirect("ManageUniversities.jsp");
}catch(Exception e){
	String err = e.getMessage();
	request.setAttribute("Error", err);
    request.getRequestDispatcher("ManageUniversities.jsp").forward(request, response); 
}
%>