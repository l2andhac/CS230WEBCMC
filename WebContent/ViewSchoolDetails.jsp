<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="cmc.interaction.*" import="cmc.entity.*"
	import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View School Details</title>
</head>
<%
	UserInteraction ui = (UserInteraction) session.getAttribute("ai");
	String schoolName = request.getParameter("schoolName");
	University school = ui.getSchool(schoolName);
%>
<body>
	<a href="UserMenu.jsp">Back to Menu</a>
	<form action="EditUniv_action.jsp">
		<table style="text-align: left; width: 100%;" border="1"
			cellpadding="2" cellspacing="2">
			<tbody>
				<tr>
					<td>SCHOOL</td>
					<td><input disabled="disabled"
						value="<%=school.getSchoolName()%>" name="Name" type="text"></td>
				</tr>
				<tr>
					<td>STATE</td>
					<td><input disabled="disabled" value=<%=school.getState()%>
						name="State" type="text"></td>
				</tr>
				<tr>
					<td>LOCATION</td>
					<td><input disabled="disabled" value=<%=school.getLocation()%>
						name="Location" type="text"></td>
				</tr>
				<tr>
					<td>CONTROL</td>
					<td><input disabled="disabled" value=<%=school.getControl()%>
						name="Control" type="text"></td>
				</tr>
				<tr>
					<td>NUMBER OF STUDENTS</td>
					<td><input disabled="disabled"
						value=<%=school.getNumStudents()%> name="NumOfStudents"
						type="text"></td>
				</tr>
				<tr>
					<td>% Female</td>
					<td><input disabled="disabled"
						value=<%=school.getPercentFemales()%> name="PercentFemale"
						type="text"></td>
				</tr>
				<tr>
					<td>SAT VERBAL</td>
					<td><input disabled="disabled"
						value=<%=school.getSATVerbal()%> name="SATVerb" type="text"></td>
				</tr>
				<tr>
					<td>SAT MATH</td>
					<td><input disabled="disabled" value=<%=school.getSATMath()%>
						name="SATMath" type="text"></td>
				</tr>
				<tr>
					<td>EXPENSES</td>
					<td><input disabled="disabled" value=<%=school.getExpenses()%>
						name="Expenses" type="text"></td>
				</tr>
				<tr>
					<td>% FINANCIAL AID</td>
					<td><input disabled="disabled"
						value=<%=school.getPercentFinancialAid()%> name="PercentFinAid"
						type="text"></td>
				</tr>
				<tr>
					<td>NUMBER OF APPLICANTS</td>
					<td><input disabled="disabled"
						value=<%=school.getNumApplicants()%> name="NumApplicants"
						type="text"></td>
				</tr>
				<tr>
					<td>% ADMITTED</td>
					<td><input disabled="disabled"
						value=<%=school.getPercentAdmitted()%> name="PercentAdmitted"
						type="text"></td>
				</tr>
				<tr>
					<td>% ENROLLED</td>
					<td><input disabled="disabled"
						value=<%=school.getPercentEnrolled()%> name="PercentEnrolled"
						type="text"></td>
				</tr>
				<tr>
					<td>ACADEMICS SCALE (1-5)</td>
					<td><input disabled="disabled"
						value=<%=school.getAcademicScale()%> name="AcademicScale"
						type="text"></td>
				</tr>
				<tr>
					<td>SOCIAL SCALE (1-5)</td>
					<td><input disabled="disabled"
						value=<%=school.getSocialScale()%> name="SocialScale" type="text"></td>
				</tr>
				<tr>
					<td>QUALITY OF LIFE SCALE (1-5)</td>
					<td><input disabled="disabled"
						value=<%=school.getQualityOfLifeScale()%> name="QualScale"
						type="text"></td>
				</tr>
				<tr>
					<td>EMPHASES</td>
					<%
						List<String> emph = school.getEmphases();
					%>
					<%
						int i = 0;
					%>
					<td>
						<%
							if (emph.size() != 0) {
								for (; i < emph.size(); i++) {
						%> <input disabled="disabled" value=<%=emph.get(i)%>
						name="Emphases" type="text"> <%
 	}
 	}
 %>
					</td>
					<%--<input
						name="Emphases2" type="text"> <input name="Emphases3"
						type="text"> <input name="Emphases4" type="text">
						<input name="Emphases5" type="text"> --%>

				</tr>
			</tbody>
		</table>
	</form>



	<table style="text-align: left; width: 100%;" border="1"
		cellpadding="2" cellspacing="2">
		<tbody>
			<%
				Map<Double, String> topFive = ui.showRecSchools(schoolName);
				out.println("Top 5 Recommended Schools");
				for (String name : topFive.values()) {

					out.println("<tr>");
					out.println("<td style=\"vertical-align: top;\">");
					out.println("<form method=\"post\" action=\"ViewSchoolDetails.jsp\" name=\"View\">");
					out.println("<input name=\"View\" value=\"View\" type=\"submit\"> <input");
					out.println("name=\"schoolName\" value=\"" + name + "\" type=\"hidden\">");
					out.println("</form>");
					out.println("</td>");
					out.println("<td style=\"vertical-align: top;\">" + name + "</td>");
					out.println("</form>");
					out.println("</td>");
					out.println("</tr>");

				}
			%>
		</tbody>
	</table>
</body>
</html>

