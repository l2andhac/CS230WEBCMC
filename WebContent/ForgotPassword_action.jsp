<%@page language="java" import="cmc.controller.*" import="cmc.entity.*"
	import="cmc.interaction.*"%>
<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<%
AccountInteraction aci= new AccountInteraction();
String username = request.getParameter("ForgotPassUsername");

//boolean sent = ai.forgotPassword(username);
//boolean sent = aci.forgotPassword(username);

/* if (sent){
	response.sendRedirect("index.jsp");
}
else{
	response.sendRedirect("index.jsp?Error=4");
} */
%>