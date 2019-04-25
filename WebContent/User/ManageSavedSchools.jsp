<%@ page language="java" import="cmc.entity.*" import="cmc.interaction.*" import="cmc.controller.*" import="java.util.*"%>
<%@include file="../verifyLogin.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Manage Saved Schools</title>
</head>
<body style="background-image: url(images/plants.jpg); background-repeat: no-repeat; background-size: cover;">
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
				if(savedSchools.size() == 0){
					request.setAttribute("Error", "You have no saved schools");
			        request.getRequestDispatcher("UserMenu.jsp").forward(request, response);
				}
				else if(savedSchools.size() == 1){
					for (SavedSchool s : savedSchools) {
						out.println("<tr>");
						out.println("<td style=\"vertical-align: top;\">");
						out.println("<form method=\"post\" action=\"ViewSchoolDetails.jsp?schoolName=" + s.getSchoolName() + "\" name=\"View\">");
						out.println("<input name = \"View\" value=\"View\" type=\"submit\">");
						out.println("</form>");
						out.println("</td>");
						out.println("<td style=\"vertical-align: top;\">" + s.getSchoolName() + "</td>");
						out.println("<td style=\"vertical-align: top;\">");
						out.println("<form method=\"post\" action=\"DeleteSavedSchoolAction.jsp?Name=" + s.getSchoolName() + "\" name=\"Remove\">");
						out.println("<input name=\"Remove\" value=\"Remove\" type=\"submit\">");
						out.println("</form>");
						out.println("</td>");
						out.println("</tr>");
					}
				}
				else{
				for (SavedSchool s : savedSchools) {
					out.println("<tr>");
					out.println("<td style=\"vertical-align: top;\">");
					out.println("<form method=\"post\" action=\"CompareSchoolTo.jsp?schoolName=" + s.getSchoolName() + "\" name=\"Compare\">");
					out.println("<input name = \"Compare\" value=\"Compare\" type=\"submit\">");
					out.println("</form>");
					out.println("</td>");
					out.println("<td style=\"vertical-align: top;\">");
					out.println("<form method=\"post\" action=\"ViewSchoolDetails.jsp?schoolName=" + s.getSchoolName() + "\" name=\"View\">");
					out.println("<input name = \"View\" value=\"View\" type=\"submit\">");
					out.println("</form>");
					out.println("</td>");
					out.println("<td style=\"vertical-align: top;\">" + s.getSchoolName() + "</td>");
					out.println("<td style=\"vertical-align: top;\">");
					out.println("<form method=\"post\" action=\"DeleteSavedSchoolAction.jsp?Name=" + s.getSchoolName() + "\" name=\"Remove\">");
					out.println("<input name=\"Remove\" value=\"Remove\" type=\"submit\">");
					out.println("</form>");
					out.println("</td>");
					out.println("</tr>");
				}
				}
			%>
				

			</tr>
		</tbody>
	</table>

</body>
</html>