<%@page language="java" import="cmc.controller.*" import="cmc.entity.*"
	import="cmc.interaction.*" import="java.util.*" import="javax.mail.*" import="javax.mail.internet.*" 
	import="java.lang.Math"%>

<%
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
%>