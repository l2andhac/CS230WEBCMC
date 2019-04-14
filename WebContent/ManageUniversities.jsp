<%@page language="java" import="cmc.interaction.*" import="cmc.entity.*"
	import="java.util.*"%>
<html>
<head>
<title></title>
</head>
<body>
	<%
		AdminInteraction ai = (AdminInteraction) session.getAttribute("ai");
	%>
	Hello Admin
	<%=ai.getUsername()%>
	<table style="text-align: left; width: 100%;" border="1"
		cellpadding="2" cellspacing="2">
		<tbody>
			<tr align="center">

				<td colspan="18" rowspan="1" style="vertical-align: top;"><a
					href="AddUniv.jsp">ADD A NEW UNIVERSITY</a></td>

			</tr>
			<tr>
				<td style="vertical-align: top;"></td>
				<td style="vertical-align: top; text-align: center;">School</td>
				<td style="vertical-align: top; text-align: center;">State</td>
				<td style="vertical-align: top; text-align: center;">Location</td>
				<td style="vertical-align: top; text-align: center;">Control</td>
				<td style="vertical-align: top; text-align: center;"># of Students</td>
				<td style="vertical-align: top; text-align: center;">% Females</td>
				<td style="vertical-align: top; text-align: center;">SAT Math</td>
				<td style="vertical-align: top; text-align: center;">SAT Verbal</td>
				<td style="vertical-align: top; text-align: center;">Expenses</td>
				<td style="vertical-align: top; text-align: center;">% With Financial Aid</td>
				<td style="vertical-align: top; text-align: center;"># of Applicants</td>
				<td style="vertical-align: top; text-align: center;">% Admitted</td>
				<td style="vertical-align: top; text-align: center;">% Enrolled</td>
				<td style="vertical-align: top; text-align: center;">Academics Scale(1-5)</td>
				<td style="vertical-align: top; text-align: center;">Social Scale(1-5)</td>
				<td style="vertical-align: top; text-align: center;">Quality Of Life Scale(1-5)</td>
				<td style="vertical-align: top;"></td>
			</tr>

			<%
				Set<University> allSchools = ai.viewAllSchools();
				for (University u : allSchools) {
					out.println("<tr>");
					out.println("<td style=\"vertical-align: top;\">");
					out.println("<form method=\"post\" action=\"EditAccount.jsp\" name=\"Edit\">");
					out.println("<input name=\"Edit\" value=\"Edit\" type=\"submit\"> <input");
					out.println("name=\"schoolName\" value=" + u.getSchoolName() + " type=\"hidden\">");
					out.println("</form>");
					out.println("</td>");
					out.println("<td style=\"vertical-align: top;\">" + u.getSchoolName() + "</td>");
					out.println("<td style=\"vertical-align: top;\">" + u.getState() + "</td>");
					out.println("<td style=\"vertical-align: top;\">" + u.getLocation() + "</td>");
					out.println("<td style=\"vertical-align: top;\">" + u.getControl() + "</td>");
					out.println("<td style=\"vertical-align: top;\">" + u.getNumStudents() + "</td>");
					out.println("<td style=\"vertical-align: top;\">" + u.getPercentFemales() + "</td>");
					out.println("<td style=\"vertical-align: top;\">" + u.getSATVerbal() + "</td>");
					out.println("<td style=\"vertical-align: top;\">" + u.getSATMath() + "</td>");
					out.println("<td style=\"vertical-align: top;\">" + u.getExpenses() + "</td>");
					out.println("<td style=\"vertical-align: top;\">" + u.getPercentFinancialAid() + "</td>");
					out.println("<td style=\"vertical-align: top;\">" + u.getNumApplicants() + "</td>");
					out.println("<td style=\"vertical-align: top;\">" + u.getPercentAdmitted() + "</td>");
					out.println("<td style=\"vertical-align: top;\">" + u.getPercentEnrolled() + "</td>");
					out.println("<td style=\"vertical-align: top;\">" + u.getAcademicScale() + "</td>");
					out.println("<td style=\"vertical-align: top;\">" + u.getSocialScale() + "</td>");
					out.println("<td style=\"vertical-align: top;\">" + u.getQualityOfLifeScale() + "</td>");
					out.println("<td style=\"vertical-align: top;\">");
					out.println("<form method=\"post\" action=\"Delete.jsp\" name=\"Delete\">");
					out.println("<input name=\"Delete\" value=\"Delete\" type=\"submit\"> <input");
					out.println("name=\"Username\" value=" + u + " type=\"hidden\">");
					out.println("</form>");
					out.println("</td>");
					out.println("</tr>");
				}
			%>
			
				
					
						
				
			
			
		</tbody>
	</table>
</body>
</html>

