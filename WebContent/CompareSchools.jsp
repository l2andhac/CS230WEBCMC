<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="cmc.interaction.*" import="cmc.entity.*" import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View School Details</title>
</head>
<%UserInteraction ui = (UserInteraction) session.getAttribute("ai");
String schoolName = request.getParameter("schoolName");
List<University> schoolList = ui.compareSavedSchools(schoolName);
University school = schoolList.get(0);
University school2 = schoolList.get(1);
%>
<body>
	<a href="UserMenu.jsp">Back to Menu</a>
	<form>
		<table style="text-align: left; width: 100%;" border="1"
			cellpadding="2" cellspacing="2">
			<tbody>
				<tr>
					<td>SCHOOL</td>
					<td><input disabled="disabled" value="<%=school.getSchoolName()%>" name="Name" type="text"></td>
					<td><input disabled="disabled" value="<%=school2.getSchoolName()%>" name="Name" type="text"></td>
				</tr>
				<tr>
					<td>STATE</td>
					<td><input disabled="disabled" value=<%=school.getState()%> name="State" type="text"></td>
					<td><input disabled="disabled" value=<%=school2.getState()%> name="State" type="text"></td>
				</tr>
				<tr>
					<td>LOCATION</td>
					<td><input disabled="disabled" value=<%=school.getLocation()%> name="Location" type="text"></td>
					<td><input disabled="disabled" value=<%=school2.getLocation()%> name="Location" type="text"></td>
				</tr>
				<tr>
					<td>CONTROL</td>
					<td><input disabled="disabled" value=<%=school.getControl()%> name="Control" type="text"></td>
					<td><input disabled="disabled" value=<%=school2.getControl()%> name="Control" type="text"></td>
				</tr>
				<tr>
					<td>NUMBER OF STUDENTS</td>
					<td><input disabled="disabled" value=<%=school.getNumStudents()%> name="NumOfStudents" type="text"></td>
					<td><input disabled="disabled" value=<%=school2.getNumStudents()%> name="NumOfStudents" type="text"></td>
				</tr>
				<tr>
					<td>% Female</td>
					<td><input disabled="disabled" value=<%=school.getPercentFemales()%> name="PercentFemale" type="text"></td>
					<td><input disabled="disabled" value=<%=school2.getPercentFemales()%> name="PercentFemale" type="text"></td>
				</tr>
				<tr>
					<td>SAT VERBAL</td>
					<td><input disabled="disabled" value=<%=school.getSATVerbal()%> name="SATVerb" type="text"></td>
					<td><input disabled="disabled" value=<%=school2.getSATVerbal()%> name="SATVerb" type="text"></td>
				</tr>
				<tr>
					<td>SAT MATH</td>
					<td><input disabled="disabled" value=<%=school.getSATMath()%> name="SATMath" type="text"></td>
					<td><input disabled="disabled" value=<%=school2.getSATMath()%> name="SATMath" type="text"></td>
				</tr>
				<tr>
					<td>EXPENSES</td>
					<td><input disabled="disabled" value=<%=school.getExpenses()%> name="Expenses" type="text"></td>
					<td><input disabled="disabled" value=<%=school2.getExpenses()%> name="Expenses" type="text"></td>
				</tr>
				<tr>
					<td>% FINANCIAL AID</td>
					<td><input disabled="disabled" value=<%=school.getPercentFinancialAid()%> name="PercentFinAid" type="text"></td>
					<td><input disabled="disabled" value=<%=school2.getPercentFinancialAid()%> name="PercentFinAid" type="text"></td>
				</tr>
				<tr>
					<td>NUMBER OF APPLICANTS</td>
					<td><input disabled="disabled" value=<%=school.getNumApplicants()%> name="NumApplicants" type="text"></td>
					<td><input disabled="disabled" value=<%=school2.getNumApplicants()%> name="NumApplicants" type="text"></td>
				</tr>
				<tr>
					<td>% ADMITTED</td>
					<td><input disabled="disabled" value=<%=school.getPercentAdmitted()%> name="PercentAdmitted" type="text"></td>
					<td><input disabled="disabled" value=<%=school2.getPercentAdmitted()%> name="PercentAdmitted" type="text"></td>
				</tr>
				<tr>
					<td>% ENROLLED</td>
					<td><input disabled="disabled" value=<%=school.getPercentEnrolled()%> name="PercentEnrolled" type="text"></td>
					<td><input disabled="disabled" value=<%=school2.getPercentEnrolled()%> name="PercentEnrolled" type="text"></td>
				</tr>
				<tr>
					<td>ACADEMICS SCALE (1-5)</td>
					<td><input disabled="disabled" value=<%=school.getAcademicScale()%> name="AcademicScale" type="text"></td>
					<td><input disabled="disabled" value=<%=school2.getAcademicScale()%> name="AcademicScale" type="text"></td>
				</tr>
				<tr>
					<td>SOCIAL SCALE (1-5)</td>
					<td><input disabled="disabled" value=<%=school.getSocialScale()%> name="SocialScale" type="text"></td>
					<td><input disabled="disabled" value=<%=school2.getSocialScale()%> name="SocialScale" type="text"></td>
				</tr>
				<tr>
					<td>QUALITY OF LIFE SCALE (1-5)</td>
					<td><input disabled="disabled" value=<%=school.getQualityOfLifeScale()%> name="QualScale" type="text"></td>
					<td><input disabled="disabled" value=<%=school.getQualityOfLifeScale()%> name="QualScale" type="text"></td>
				</tr>
				<tr>
					<td>EMPHASES</td>
					<td><input name="Emphases1" type="text"> <input
						name="Emphases2" type="text"> <input name="Emphases3"
						type="text"> <input name="Emphases4" type="text">
						<input name="Emphases5" type="text"></td>
				</tr>
			</tbody>
		</table>
	</form>
	
	<%Map<Double, String> topFive = ui.showRecSchools(schoolName);
	
	  out.println("Top 5 Recommended Schools");
	  for(String name: topFive.values()){
		  out.println(name);
	  }
	
	%>
	
</body>
</html>

