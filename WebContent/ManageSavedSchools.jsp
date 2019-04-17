<%@ page language="java" import="cmc.entity.*" import="cmc.interaction.*" import="cmc.controller.*" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Manage Saved Schools</title>
</head>
<body>
	<%
		UserInteraction ui = (UserInteraction) session.getAttribute("ai");
	%>
	
	<a href="UserMenu.jsp">Return to Menu</a>
	
	<table style="text-align: left; width: 100%;" border="1"
		cellpadding="2" cellspacing="2">
		<tbody>
			<tr align="center">

				<td colspan="18" rowspan="1" style="vertical-align: top;"><a>School</a></td>
				<%
				List<SavedSchool> savedSchools = ui.viewSavedSchools();
				for (SavedSchool s : savedSchools) {
					out.println("<tr>");
					out.println("<td style=\"vertical-align: top;\">");
					out.println("<form method=\"post\" action=\"ViewSchoolDetails.jsp?schoolName=\"" + s.getSchoolName() + "\" name=\"View\">");
					out.println("<input name = \"View\" value=\"View\" type=\"submit\">");
					out.println("</form>");
					out.println("</td>");
					out.println("<td style=\"vertical-align: top;\">" + s.getSchoolName() + "</td>");
					out.println("<td style=\"vertical-align: top;\">");
					out.println("<form method=\"post\" action=\"DeleteSavedSchoolAction.jsp?Name=" + s.getSchoolName() + "\" name=\"Remove\">");
					out.println("<input name=\"Remove\" value=\"Delete\" type=\"submit\">");
					out.println("</form>");
					out.println("</td>");
					out.println("</tr>");
				}
			%>
				

			</tr>
		</tbody>
	</table>

</body>
</html>