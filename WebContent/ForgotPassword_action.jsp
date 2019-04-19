<%@page language="java" import="cmc.controller.*" import="cmc.entity.*"
	import="cmc.interaction.*"%>
<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<%
try{
AccountInteraction aci= new AccountInteraction();
String username = request.getParameter("ForgotPassUsername");

//boolean sent = ai.forgotPassword(username);
boolean sent = aci.forgotPassword(username);

 if (sent){
	response.sendRedirect("index.jsp");
}
else{
	response.sendRedirect("index.jsp?Error=4");
}
}catch(Exception e){
	String err = e.getMessage();
	request.setAttribute("Error", err);
    request.getRequestDispatcher("ForgotPassword.jsp").forward(request, response); 
}
%>