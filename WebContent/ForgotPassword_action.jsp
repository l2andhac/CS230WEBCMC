<%@page language="java" import="cmc.controller.*" import="cmc.entity.*"
	import="cmc.interaction.*"%>

<%AccountInteraction ai = (AccountInteraction)session.getAttribute("ai");
String username = request.getParameter("ForgotPassUsername");

boolean sent = ai.forgotPassword(username);

if (sent){
	response.sendRedirect("index.jsp");
}
else{
	response.sendRedirect("index.jsp?Error=4");
}
%>