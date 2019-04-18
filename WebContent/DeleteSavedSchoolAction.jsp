<%@ page language="java" import="cmc.interaction.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<%
try{
	UserInteraction ui = (UserInteraction) session.getAttribute("ai");
	String name = request.getParameter("Name");
	ui.removeSavedSchool(name);
	response.sendRedirect("ManageSavedSchools.jsp");
}catch(Exception e){
	out.println(e.getMessage());
}
%>

</html>