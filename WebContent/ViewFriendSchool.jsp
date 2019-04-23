<%@ page language="java" import="java.util.*" import="cmc.entity.*"%>

<%@include file="verifyLogin.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Friend's School</title>
</head>
<body>
<%
	List<SavedSchool> list = (List<SavedSchool>)request.getAttribute("FriendList");
	if(list.size() > 0 ){
		out.println("<table style=\"text-align: left; width: 100%;\" border=\"1\" cellpadding=\"2\" cellspacing=\"2\">");
		out.println("<tbody>");
		for(SavedSchool s : list){
			out.println("<tr>");
			out.println("<td style=\"vertical-align: top;\">");
			out.println("<form method=\"post\" action=\"SaveSchool_action.jsp?SchoolName=" +s.getSchoolName() + "\" name=\"Save\">");
			out.println("<input name=\"Save\" value=\"Save\" type=\"submit\"> <input");
			out.println("name=\"Save\" value=" + s.getSchoolName() + " type=\"hidden\">");
			out.println("</form>");
			out.println("</td>");
			out.println("<td>" + s.getSchoolName() + "</td>");
			out.println("<td style=\"vertical-align: top;\">");
			out.println("<form method=\"post\" action=\"ViewSchoolDetails.jsp?schoolName=" +s.getSchoolName() + "\" name=\"View\">");
			out.println("<input name=\"View\" value=\"View\" type=\"submit\"> <input");
			out.println("name=\"View\" value=" + s.getSchoolName() + " type=\"hidden\">");
			out.println("</form>");
			out.println("</td>");
			out.println("</tr>");
		}
		out.println("</tbody");
		out.println("</table>");
		
	}else{
		out.println("NO MATCHES FOUND");
	}
%>
</body>
</html>