<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add New University</title>
</head>
<body>
<a href="AdminMenu.jsp">Return to Menu</a><br>
<%
		String anyErrors = (String) request.getAttribute("Error");
		if (anyErrors != null) { %>
		<i style="color:red">
		<%
			out.println(anyErrors);
		}
		%>
		</i><br>
<form action="AddUniv_action.jsp">
<table style="text-align: left; width: 100%;" border="1"
		cellpadding="2" cellspacing="2">
	<tr>
		<td>SCHOOL</td>
		<td><input type="text" name="Name"></td>
	</tr>
	<tr>
		<td>STATE</td>
		<td><input type="text" name="State"></td>
	</tr>
	<tr>
		<td>LOCATION</td>
		<td><input type="text" name="Location"></td>
	</tr>
	<tr>
		<td>CONTROL</td>
		<td><input type="text" name="Control"></td>
	</tr>
	<tr>
		<td>NUMBER OF STUDENTS</td>
		<td><input type="text" name="NumOfStudents"></td>
	</tr>
	<tr>
		<td>% Female</td>
		<td><input type="text" name="PercentFemale"></td>
	</tr>
	<tr>
		<td>SAT VERBAL</td>
		<td><input type="text" name="SATVerb"></td>
	</tr>
	<tr>
		<td>SAT MATH</td>
		<td><input type="text" name="SATMath"></td>
	</tr>
	<tr>
		<td>EXPENSES</td>
		<td><input type="text" name="Expenses"></td>
	</tr>
	<tr>
		<td>% FINANCIAL AID</td>
		<td><input type="text" name="PercentFinAid"></td>
	</tr>
	<tr>
		<td>NUMBER OF APPLICANTS</td>
		<td><input type="text" name="NumApplicants"></td>
	</tr>
	<tr>
		<td>% ADMITTED</td>
		<td><input type="text" name="PercentAdmitted"></td>
	</tr>
	<tr>
		<td>% ENROLLED</td>
		<td><input type="text" name="PercentEnrolled"></td>
	</tr>
	<tr>
		<td>ACADEMICS SCALE (1-5)</td>
		<td><input type="text" name="AcademicScale"></td>
	</tr>
	<tr>
		<td>SOCIAL SCALE (1-5)</td>
		<td><input type="text" name="SocialScale"></td>
	</tr>
	<tr>
		<td>QUALITY OF LIFE SCALE (1-5)</td>
		<td><input type="text" name="QualScale"></td>
	</tr>
	<tr>
		<td>EMPHASES</td>
		<td><input type="text" name="Emphases1">
		<input type="text" name="Emphases2">
		<input type="text" name="Emphases3">
		<input type="text" name="Emphases4">
		<input type="text" name="Emphases5"></td>
	</tr>
</table>
<button type="submit">Add School</button>
<button type="reset">Cancel Changes</button>
</form>

</body>
</html>