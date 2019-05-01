<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="cmc.interaction.*"
	import="cmc.entity.*, java.util.*"%>
	
	<%@include file="../verifyLoginAdmin.jsp" %>
<html>
<head>
<script>

function validate(){
	var location = document.forms["EditForm"]["Location"].value;
	var control = document.forms["EditForm"]["Control"].value;
	var numStu = document.forms["EditForm"]["NumOfStudents"].value;
	var fem = document.forms["EditForm"]["PercentFemale"].value;
	var verb = document.forms["EditForm"]["SATVerb"].value;
	var math = document.forms["EditForm"]["SATMath"].value;
	var expenses = document.forms["EditForm"]["Expenses"].value;
	var finAid = document.forms["EditForm"]["PercentFinAid"].value;
	var app = document.forms["EditForm"]["NumApplicants"].value;
	var adm = document.forms["EditForm"]["PercentAdmitted"].value;
	var enrol = document.forms["EditForm"]["PercentEnrolled"].value;
	var acad = document.forms["EditForm"]["AcademicScale"].value;
	var soc = document.forms["EditForm"]["SocialScale"].value;
	var life = document.forms["EditForm"]["QualScale"].value;
	var emp1 = document.forms["EditForm"]["Emphases1"].value;
	var emp2 = document.forms["EditForm"]["Emphases2"].value;
	var emp3 = document.forms["EditForm"]["Emphases3"].value;
	var emp4 = document.forms["EditForm"]["Emphases4"].value;
	var emp5 = document.forms["EditForm"]["Emphases5"].value;
	if(numStu < -1 || fem < -1 || verb < -1||  math < -1 || expenses < -1  || finAid < -1  || app < -1  
			|| adm < -1  || enrol < -1 ||  acad < -1 || soc < -1 || life < -1){
		alert("No negative entries allowed. Please enter a positive value or leave the field blank");
		return false;
	}
	if(math > 800 || verb > 800){
		alert("SAT scores can not be greater than 800");
		return false;
	} if(fem > 100 || finAid > 100 || adm > 100 || enrol > 100){
		alert("No percentages higher than 100 allowed");
		return false;
	}if(soc > 5 || acad > 5 || life > 5){
		alert("No scales greater than 5");
		return false;
	}
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit University</title>
</head>
<%
	AdminInteraction ai = (AdminInteraction) session.getAttribute("ai");
	String schoolName = request.getParameter("schoolName");
	University school = ai.getSchool(schoolName);
	//System.out.println(schoolName);
%>
<body style="background-image: url(../images/pens.jpg); background-repeat: no-repeat; background-size: cover;">
	<a href="AdminMenu.jsp">Back to Menu</a>
	<form name="EditForm" action="EditUniv_action.jsp" onsubmit= "validate()">
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
					<td><select name="Location">
						<option value="<%=school.getLocation()%>"><%=school.getLocation()%></option>
						<option value="SUBURBAN">Suburban</option>
						<option value="URBAN">Urban</option>
						<option value="SMALL-CITY">Small-City</option>
						</select></td>
				</tr>
				<tr>
					<td>CONTROL</td>
					<td><select name="Control">
						<option value="<%=school.getControl()%>"><%=school.getControl()%></option>
						<option value="PRIVATE">Private</option>
						<option value="STATE">State</option>
						<option value="CITY">City</option>
						</select></td>
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
						type="text" max="800"></td>
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

