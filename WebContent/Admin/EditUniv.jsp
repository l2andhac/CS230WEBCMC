<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="cmc.interaction.*"
	import="cmc.entity.*, java.util.*"%>
	
	<%@include file="../verifyLogin.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add New University</title>
</head>
<%
	AdminInteraction ai = (AdminInteraction) session.getAttribute("ai");
	String schoolName = request.getParameter("schoolName");
	University school = ai.getSchool(schoolName);
	//System.out.println(schoolName);
%>
<body style="background-image: url(../images/pens.jpg); background-repeat: no-repeat; background-size: cover;">
	<a href="AdminMenu.jsp">Back to Menu</a>
	<form action="EditUniv_action.jsp">
		<table style="text-align: left; width: 100%;" border="1"
			cellpadding="2" cellspacing="2">
			<tbody>
				<tr>
					<td>SCHOOL</td>
					<td><input readonly="readonly"
						value="<%=school.getSchoolName()%>" name="Name" type="text"></td>
				</tr>
				<tr>
					<td>STATE</td>
					<td><input value="<%=school.getState()%>" name="State"
						type="text"></td>
				</tr>
				<tr>
					<td>LOCATION</td>
					<td><input value="<%=school.getLocation()%>" name="Location"
						type="text"></td>
				</tr>
				<tr>
					<td>CONTROL</td>
					<td><input value="<%=school.getControl()%>" name="Control"
						type="text"></td>
				</tr>
				<tr>
					<td>NUMBER OF STUDENTS</td>
					<td><input value=<%=school.getNumStudents()%>
						name="NumOfStudents" type="text"></td>
				</tr>
				<tr>
					<td>% Female</td>
					<td><input value=<%=school.getPercentFemales()%>
						name="PercentFemale" type="text"></td>
				</tr>
				<tr>
					<td>SAT VERBAL</td>
					<td><input value=<%=school.getSATVerbal()%> name="SATVerb"
						type="text"></td>
				</tr>
				<tr>
					<td>SAT MATH</td>
					<td><input value=<%=school.getSATMath()%> name="SATMath"
						type="text"></td>
				</tr>
				<tr>
					<td>EXPENSES</td>
					<td><input value=<%=school.getExpenses()%> name="Expenses"
						type="text"></td>
				</tr>
				<tr>
					<td>% FINANCIAL AID</td>
					<td><input value=<%=school.getPercentFinancialAid()%>
						name="PercentFinAid" type="text"></td>
				</tr>
				<tr>
					<td>NUMBER OF APPLICANTS</td>
					<td><input value=<%=school.getNumApplicants()%>
						name="NumApplicants" type="text"></td>
				</tr>
				<tr>
					<td>% ADMITTED</td>
					<td><input value=<%=school.getPercentAdmitted()%>
						name="PercentAdmitted" type="text"></td>
				</tr>
				<tr>
					<td>% ENROLLED</td>
					<td><input value=<%=school.getPercentEnrolled()%>
						name="PercentEnrolled" type="text"></td>
				</tr>
				<tr>
					<td>ACADEMICS SCALE (1-5)</td>
					<td><input value=<%=school.getAcademicScale()%>
						name="AcademicScale" type="text"></td>
				</tr>
				<tr>
					<td>SOCIAL SCALE (1-5)</td>
					<td><input value=<%=school.getSocialScale()%>
						name="SocialScale" type="text"></td>
				</tr>
				<tr>
					<td>QUALITY OF LIFE SCALE (1-5)</td>
					<td><input value=<%=school.getQualityOfLifeScale()%>
						name="QualScale" type="text"></td>
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
									out.print("<input value= \"" + emph.get(i) + "\" name=\"Emphases" + (i + 1) + "\" type=\"text\">");
								}

							}

							for (; i < 5; i++) {
								out.print("<input value= \"\" name=\"Emphases" + (i + 1) + "\" type=\"text\">");
							}%>
					</td>
				</tr>
			</tbody>
		</table>
		<button value="ApplyChanges" name="ApplyChanges">Apply
			Changes</button>
		<button type="reset">Cancel Changes</button>
	</form>
</body>
</html>

