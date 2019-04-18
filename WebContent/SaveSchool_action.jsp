<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.controller.*" import="cmc.entity.*" import="cmc.interaction.*"%>
    
<%@include file="verifyLogin.jsp" %>

<%
try{
UserInteraction ai = (UserInteraction) session.getAttribute("ai");

String name = request.getParameter("SchoolName");

University univ = ai.getSchool(name);
//System.out.println(name);

ai.saveSchool(univ);

response.sendRedirect("ManageSavedSchools.jsp");
}catch(Exception e){
	out.println(e.getMessage());
}

%>