<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search form</title>
</head>
<body>
<a href="UserMenu.jsp">Return to Menu</a>
	<form action="Search_action.jsp" name="Search">
		<table style="text-align: left; height: 696px; width: 923px;"
			border="1" cellpadding="2" cellspacing="2">
			<tbody>
				<tr>
					<td style="vertical-align: top; height: 30px; width: 271px;">by
						SCHOOL NAME<br>
					</td>
					<td style="vertical-align: top; height: 30px; width: 634px;">Contains<input
						name="SchoolName"></td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 29px; width: 271px;">by
						STATE<br>
					</td>
					<td style="vertical-align: top; height: 29px; width: 634px;">Contains
						<input name="State"><br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 31px; width: 271px;">by
						LOCATION<br>
					</td>
					<td style="vertical-align: top; height: 31px; width: 634px;"><input
						name="Location"> (SUBURBAN, URBAN, SMALL-CITY or -1 for
						UNKNOWN)</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 31px; width: 271px;">by
						CONTROL<br>
					</td>
					<td style="vertical-align: top; height: 31px; width: 634px;"><input
						name="Control"> (PRIVATE, STATE, CITY or&nbsp; -1 for
						UNKNOWN)</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 30px; width: 271px;">by
						NUMBER OF STUDENTS<br>
					</td>
					<td style="vertical-align: top; height: 30px; width: 634px;">between&nbsp;<input
						name="NumStudentsDown"> and <input name="NumStudentsUp"><br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 31px; width: 271px;">by
						% FEMALE<br>
					</td>
					<td style="vertical-align: top; height: 31px; width: 634px;">between&nbsp;<input
						name="FemaleDown"> and&nbsp;<input name="FemaleUp">
						<br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 30px; width: 271px;">by
						SAT VERBAL<br>
					</td>
					<td style="vertical-align: top; height: 30px; width: 634px;">between&nbsp;<input
						name="VerbalDown"> and&nbsp;<input name="VerbalUp">
						<br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 30px; width: 271px;">by
						SAT MATH<br>
					</td>
					<td style="vertical-align: top; height: 30px; width: 634px;">between&nbsp;<input
						name="MathDown"> and&nbsp;<input name="MathUp"> <br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 29px; width: 271px;">by
						EXPENSES<br>
					</td>
					<td style="vertical-align: top; height: 29px; width: 634px;">between&nbsp;<input
						name="ExpensesDown"> and&nbsp;<input name="ExpensesUp">
						<br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 28px; width: 271px;">by
						% FINANCIAL AID<br>
					</td>
					<td style="vertical-align: top; height: 28px; width: 634px;">between&nbsp;<input
						name="FinancialAidDown"> and&nbsp;<input
						name="FinancialAidUp"> <br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 26px; width: 271px;">by
						NUMBER OF APPLICANTS<br>
					</td>
					<td style="vertical-align: top; height: 26px; width: 634px;">between&nbsp;<input
						name="ApplicantsDown"> and&nbsp;<input name="ApplicantsUp">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 29px; width: 271px;">by
						% ADMITTED<br>
					</td>
					<td style="vertical-align: top; height: 29px; width: 634px;">between&nbsp;<input
						name="AdmittedDown"> and&nbsp;<input name="AdmittedUp">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 29px; width: 271px;">by
						% ENROLLED<br>
					</td>
					<td style="vertical-align: top; height: 29px; width: 634px;">between&nbsp;<input
						name="EnrolledDown"> and&nbsp;<input name="EnrolledUp">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 29px; width: 271px;">by
						ACADEMICS SCALE (1-5)<br>
					</td>
					<td style="vertical-align: top; height: 29px; width: 634px;">between&nbsp;<input
						name="AcademicsDown"> and&nbsp;<input name="AcademicsUp">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 28px; width: 271px;">by
						SOCIAL SCALE (1-5)<br>
					</td>
					<td style="vertical-align: top; height: 28px; width: 634px;">between&nbsp;<input
						name="SocialDown"> and&nbsp;<input name="SocialUp">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 28px; width: 271px;">by
						QUALITY OF LIFE SCALE (1-5)<br>
					</td>
					<td style="vertical-align: top; height: 28px; width: 634px;">between&nbsp;<input
						name="LifeDown"> and&nbsp;<input name="LifeUp">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 147px; width: 271px;">by
						EMPHASES<br>
					</td>
					<td style="vertical-align: top; height: 147px; width: 634px;">&nbsp;
						contains either<br> <input name="Emphasis1"><br>
						<input name="Emphasis2"> <br> <input name="Emphasis3">
						<br> <input name="Emphasis4"> <br> <input
						name="Emphasis5"><br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 36px; width: 271px;"><input
						name="SearchSchools" value="Search For Schools" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input name="ResetForm" value="Reset Form" type="reset"></td>
					<td style="vertical-align: top; height: 36px; width: 634px;"><br>
					</td>
				</tr>
			</tbody>
		</table>
		<br>
	</form>
</body>
</html>
