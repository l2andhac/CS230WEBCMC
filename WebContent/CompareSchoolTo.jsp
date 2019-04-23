<%@ page language="java" import="cmc.entity.*" import="cmc.interaction.*" import="cmc.controller.*" import="java.util.*"%>

<%@include file="verifyLogin.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Compare Saved Schools</title>
</head>
<body>
	<%
		UserInteraction ui = (UserInteraction) session.getAttribute("ai");
	    String schoolName1 = request.getParameter("schoolName");
	%>
	
	<a href="UserMenu.jsp">Return to Menu</a>
	
	<table style="text-align: left; width: 100%;" border="1"
		cellpadding="2" cellspacing="2">
		<tbody>
			<tr align="center">

				<td colspan="18" rowspan="1" style="vertical-align: top;"><a>Pick a school to compare to <%out.println(schoolName1);%></a></td>
				<%
				List<SavedSchool> savedSchools = ui.viewSavedSchools();
				for (SavedSchool s : savedSchools) {
					if(!s.getSchoolName().equals(schoolName1)){
					out.println("<tr>");
					out.println("<td style=\"vertical-align: top;\">");
					out.println("<form method=\"post\" action=\"CompareSchools.jsp?schoolName=" + schoolName1 + "&schoolName2=" + s.getSchoolName() + "\" name=\"Compare\">");
					out.println("<input name = \"Compare\" value=\"Compare\"type=\"submit\">");
					out.println("</form>");
					out.println("</td>");
					out.println("<td style=\"vertical-align: top;\">" + s.getSchoolName() + "</td>");
					out.println("</tr>");
					}
				}
			%>
				

			</tr>
		</tbody>
	</table>

</body>
</html>