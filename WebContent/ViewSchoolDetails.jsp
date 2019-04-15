<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add New University</title>
</head>
<body>
	<a href="AdminMenu.jsp">Back to Menu</a>
	<form action="EditUniv_action.jsp">
		<table style="text-align: left; width: 100%;" border="1"
			cellpadding="2" cellspacing="2">
			<tbody>
				<tr>
					<td>SCHOOL</td>
					<td><input name="Name" type="text"></td>
				</tr>
				<tr>
					<td>STATE</td>
					<td><input name="State" type="text"></td>
				</tr>
				<tr>
					<td>LOCATION</td>
					<td><input name="Location" type="text"></td>
				</tr>
				<tr>
					<td>CONTROL</td>
					<td><input name="Control" type="text"></td>
				</tr>
				<tr>
					<td>NUMBER OF STUDENTS</td>
					<td><input name="NumOfStudents" type="text"></td>
				</tr>
				<tr>
					<td>% Female</td>
					<td><input name="PercentFemale" type="text"></td>
				</tr>
				<tr>
					<td>SAT VERBAL</td>
					<td><input name="SATVerb" type="text"></td>
				</tr>
				<tr>
					<td>SAT MATH</td>
					<td><input name="SATMath" type="text"></td>
				</tr>
				<tr>
					<td>EXPENSES</td>
					<td><input name="Expenses" type="text"></td>
				</tr>
				<tr>
					<td>% FINANCIAL AID</td>
					<td><input name="PercentFinAid" type="text"></td>
				</tr>
				<tr>
					<td>NUMBER OF APPLICANTS</td>
					<td><input name="NumApplicants" type="text"></td>
				</tr>
				<tr>
					<td>% ADMITTED</td>
					<td><input name="PercentAdmitted" type="text"></td>
				</tr>
				<tr>
					<td>% ENROLLED</td>
					<td><input name="PercentEnrolled" type="text"></td>
				</tr>
				<tr>
					<td>ACADEMICS SCALE (1-5)</td>
					<td><input name="AcademicScale" type="text"></td>
				</tr>
				<tr>
					<td>SOCIAL SCALE (1-5)</td>
					<td><input name="SocialScale" type="text"></td>
				</tr>
				<tr>
					<td>QUALITY OF LIFE SCALE (1-5)</td>
					<td><input name="QualScale" type="text"></td>
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
		<button value="ApplyChanges" name="ApplyChanges">Apply
			Changes</button>
		<button type="reset">Cancel Changes</button>
	</form>
</body>
</html>

