<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="cmc.interaction.*,cmc.entity.*,cmc.controller.*" pageEncoding="UTF-8"%>
<% 
try{
String fname = request.getParameter("fName");
String lname = request.getParameter("lName");
String password = request.getParameter("password");
String username = request.getParameter("username");

AccountInteraction aci = new AccountInteraction();
aci.requestNewAccount(fname, lname, username, password);

response.sendRedirect("../index.jsp");
}catch(Exception e){
	String err = e.getMessage();
	request.setAttribute("Error", err);
    request.getRequestDispatcher("RequestAccount.jsp").forward(request, response); 
}
%>