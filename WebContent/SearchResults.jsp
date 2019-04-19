<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*,cmc.entity.*,cmc.controller.*,cmc.interaction.*"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search Results</title>
</head>
<body>
	<a href="Search.jsp">Back to Search<br></a> Results of the search
	<br>
	<%
		String anyErrors = (String) request.getAttribute("Error");
		if (anyErrors != null) { %>
		<i style="color:red">
		<%
			out.println(anyErrors);
		}
		%>
		</i>
	<br>

	<%
		//UserInteraction ui = (UserInteraction) session.getAttribute("ai");
		Collection<University> schoollist = (Collection<University>) request.getAttribute("SchoolList");
		//request.setAttribute("SortList", list);

		//int size = list.size();
		//out.println(size);
	%>
	<form action="SortResults_action.jsp" name="sort">
		Sort results by: <select name="sortBy">
			<option value="" selected="selected">Choose One</option>
			<option value="e">Expenses</option>
			<option value="a">Percentage of admission</option>
			<option value="n">Number of students</option>
		</select> <input name="Sort" value="Sort" type="submit"> <br>

	</form>
	<br>
	<table style="text-align: left; width: 100%;" border="1"
		cellpadding="2" cellspacing="2">
		<tbody>
			<tr align="center">

				<td colspan="8" rowspan="1" style="vertical-align: top;">SCHOOL</td>

			</tr>
			<tr>

				<%
					for (University u : schoollist) {
				%>
			
			<tr>
				<td style="vertical-align: top;">
					<%
						out.println("<form method=\"post\" action=\"SaveSchool_action.jsp?SchoolName=" + u.getSchoolName()
									+ "\" name=\"Save\">");
							out.println("<input name=\"Save\" value=\"Save\" type=\"submit\"> <input name=\"SchoolName\" value="
									+ u.getSchoolName() + " type=\"hidden\">");
					%>
					</form>
				</td>
				<%
					out.println("<td style=\"vertical-align: top;\">" + u.getSchoolName() + "</td>");
				%>
				<td style="vertical-align: top;">
					<%--<form method="post" action="ViewSchoolDetails.jsp" name="View">--%>
					<%
						out.println("<form method=\"post\" action=\"ViewSchoolDetails.jsp?schoolName=" + u.getSchoolName()
									+ "\" name=\"View\">");
							out.println("<input name = \"View\" value=\"View\" type=\"submit\">");
							//out.println("<input name=\"View\" value=\"View\" type=\"submit\"> <input name=\"SchoolName\" value="
							//		+ u.getSchoolName() + " type=\"hidden\">");
					%>
					</form> <br>
				</td>
			</tr>
			<%
				}
			%>
			<%
				//request.getRequestDispatcher("SortResults_action.jsp").forward(request, response);
			%>
			</tr>
		</tbody>
	</table>
</body>
</html>