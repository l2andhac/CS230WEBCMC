<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.controller.*" import="cmc.entity.*" import="cmc.interaction.*"%>
    
<%@include file="verifyLogin.jsp" %>

<%
AdminInteraction ai = (AdminInteraction) session.getAttribute("ai");
ai.removeSchool(request.getParameter("schoolName"));

    
response.sendRedirect("ManageUniversities.jsp");
%>