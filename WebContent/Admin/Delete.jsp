<%@include file="../verifyLoginAdmin.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.controller.*" import="cmc.entity.*" import="cmc.interaction.*"%>
    


<%
try{
AdminInteraction ai = (AdminInteraction) session.getAttribute("ai");
ai.removeAccount(request.getParameter("Username"));

    
response.sendRedirect("ManageUsers.jsp");
}catch(Exception e){
	String err = e.getMessage();
	request.setAttribute("Error", err);
    request.getRequestDispatcher("ManageUsers.jsp").forward(request, response);
}
%>