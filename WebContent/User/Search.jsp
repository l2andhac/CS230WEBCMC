<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../verifyLogin.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
function validateForm(){
	var name = document.forms["Search"]["SchoolName"].value;
	var state = document.forms["Search"]["State"].value;
	var location = document.forms["Search"]["Location"].value;
	var control = document.forms["Search"]["Control"].value;
	var numStuLo = document.forms["Search"]["NumStudentsDown"].value;
	var numStuUp = document.forms["Search"]["NumStudentsUp"].value;
	var femLo = document.forms["Search"]["FemaleDown"].value;
	var femUp = document.forms["Search"]["FemaleUp"].value;
	var verbLo = document.forms["Search"]["VerbalDown"].value;
	var verbUp = document.forms["Search"]["VerbalUp"].value;
	var mathLo = document.forms["Search"]["MathDown"].value;
	var mathUp = document.forms["Search"]["MathUp"].value;
	var expensesLo = document.forms["Search"]["ExpensesDown"].value;
	var expensesUp = document.forms["Search"]["ExpensesUp"].value;
	var finAidLo = document.forms["Search"]["FinancialAidDown"].value;
	var finAidUp = document.forms["Search"]["FinancialAidUp"].value;
	var appLo = document.forms["Search"]["ApplicantsDown"].value;
	var appUp = document.forms["Search"]["ApplicantsUp"].value;
	var admLo = document.forms["Search"]["AdmittedDown"].value;
	var admUp = document.forms["Search"]["AdmittedUp"].value;
	var enrolLo = document.forms["Search"]["EnrolledDown"].value;
	var enrolUp = document.forms["Search"]["EnrolledUp"].value;
	var acadLo = document.forms["Search"]["AcademicsDown"].value;
	var acadUp = document.forms["Search"]["AcademicsUp"].value;
	var socLo = document.forms["Search"]["SocialDown"].value;
	var socUp = document.forms["Search"]["SocialUp"].value;
	var lifeLo = document.forms["Search"]["LifeDown"].value;
	var lifeUp = document.forms["Search"]["LifeUp"].value;
	var emp1 = document.forms["Search"]["Emphasis1"].value;
	var emp2 = document.forms["Search"]["Emphasis2"].value;
	var emp3 = document.forms["Search"]["Emphasis3"].value;
	var emp4 = document.forms["Search"]["Emphasis4"].value;
	var emp5 = document.forms["Search"]["Emphasis5"].value;
	if(name == "" && state == "" && location == "" && control == "" && numStuLo == ""
			&& numStuUp == "" && femLo == "" && femUp == "" && verbLo == "" && verbUp == ""
			&& mathLo == "" && mathUp == "" && expensesLo == "" && expensesUp == "" 
			&& finAidLo == "" && finAidUp == "" && appLo == "" && appUp == "" && admLo == "" 
			&& admUp == "" && enrolLo == "" && enrolUp == "" && acadLo == "" && acadUp == ""
			&& socLo == "" && socUp == "" && lifeLo == "" && lifeUp == "" && emp1 == "" 
			&& emp2 == "" && emp3 =="" && emp4 == "" && emp5 == ""){
		alert("Please fill out at least one field");
		return false;
	} if(numStuLo < 0 || numStuUp <0 || femLo < 0 || femUp < 0 || verbLo < 0 || verbUp < 0
			|| mathLo < 0 || mathUp < 0 || expensesLo < 0 || expensesUp < 0 || finAidLo < 0 
			|| finAidUp < 0 || appLo < 0 || appUp < 0 || admLo < 0 || admUp < 0 || enrolLo < 0 
			|| enrolUp < 0 || acadLo < 0 || acadUp < 0 || socLo < 0 || socUp < 0 || lifeLo < 0
			|| lifeUp < 0){
		alert("No negative entries allowed. Please enter a positive value or leave the field blank");
		return false; 
	} if(femLo > femUp){
		alert("Percent female lower bound must be lower than or equal to the upper bound");
		return false;
	} if(numStuLo > numStuUp){
		alert("Number of students lower bound must be lower than or equal to the upper bound");
		return false;
	}
	if(verbLo > verbUp){
		alert("SATVerbal lower bound must be lower than or equal to the upper bound");
		return false;
	} if(mathLo > mathUp){
		alert("SATMath lower bound bust be lower than or equal to the upper bound");
		return false;
	} if(expensesLo > expensesUp){
		alert("Expenses lower bound must be lower than or equal to the upper bound");
		return false;
	} if(finAidLo > finAidUp){
		alert("Financial Aid lower bound must be lower than or equal to the upper bound");
		return false;
	} if(appLo > appUp){
		alert("Applicants lower bound must be lower than or equal to the upper bound");
		return false;
	} if(admLo > admUp){
		alert("Admitted lower bound must be lower than or equal to the upper bound");
		return false;
	} if(enrolLo > enrolUp){
		alert("Enrollment lower bound must be lower than or equal to the upper bound");
		return false;
	} if(acadLo > acadUp){
		alert("Academic Scale lower bound must be lower than or equal to the upper bound");
		return false;
	} if(lifeLo > lifeUp){
		alert("Quality of Life Scale lower bound must be lower than or equal to the upper bound");
		return false;
	} if(socLo > socUp){
		alert("Social Scale lower bound must be lower than or equal to the upper bound");
		return false;
	} 
	if(acadLo < 1 && acadUp > 5 && socLo < 1 && socUp > 5 && lifeLo < 1
			&& lifeUp > 5){
		alert("Entries must be between 1 and 5 inclusive");
		return false;
		
	}
	
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search form</title>
</head>
<body
	style="background-image: url(../images/laptop.jpg); background-repeat: no-repeat; background-size: cover;">
	<a href="UserMenu.jsp">Return to Menu</a>
	<h2 style="texte-align: center;">SEARCH</h2>
	<form action="Search_action.jsp" name="Search"
		onsubmit="return validateForm()">
		<table style="text-align: left; height: 700px; width: 990px;"
			border="0" cellpadding="2" cellspacing="2">
			<tbody>
				<tr>
					<td style="vertical-align: top; height: 30px; width: 271px;">by
						SCHOOL NAME:<br>
					</td>
					<td style="vertical-align: top; height: 30px; width: 634px;">Contains<input
						name="SchoolName"></td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 29px; width: 271px;">by
						STATE:<br>
					</td>
					<td style="vertical-align: top; height: 29px; width: 634px;">Contains
						<input name="State"><br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 31px; width: 271px;">by
						LOCATION:<br>
					</td>
					<td style="vertical-align: top; height: 31px; width: 634px;"><input
						name="Location"> (SUBURBAN, URBAN, SMALL-CITY or -1 for
						UNKNOWN)</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 31px; width: 271px;">by
						CONTROL:<br>
					</td>
					<td style="vertical-align: top; height: 31px; width: 634px;"><input
						name="Control"> (PRIVATE, STATE, CITY or&nbsp; -1 for
						UNKNOWN)</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 30px; width: 271px;">by
						NUMBER OF STUDENTS:<br>
					</td>
					<td style="vertical-align: top; height: 30px; width: 634px;">between&nbsp;<input
						name="NumStudentsDown"> and <input name="NumStudentsUp"><br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 31px; width: 271px;">by
						% FEMALE:<br>
					</td>
					<td style="vertical-align: top; height: 31px; width: 634px;">between&nbsp;<input
						name="FemaleDown"> and&nbsp;<input name="FemaleUp">
						<br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 30px; width: 271px;">by
						SAT VERBAL:<br>
					</td>
					<td style="vertical-align: top; height: 30px; width: 634px;">between&nbsp;<input
						name="VerbalDown"> and&nbsp;<input name="VerbalUp">
						<br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 30px; width: 271px;">by
						SAT MATH:<br>
					</td>
					<td style="vertical-align: top; height: 30px; width: 634px;">between&nbsp;<input
						name="MathDown"> and&nbsp;<input name="MathUp"> <br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 29px; width: 271px;">by
						EXPENSES:<br>
					</td>
					<td style="vertical-align: top; height: 29px; width: 634px;">between&nbsp;<input
						name="ExpensesDown"> and&nbsp;<input name="ExpensesUp">
						<br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 28px; width: 271px;">by
						% FINANCIAL AID:<br>
					</td>
					<td style="vertical-align: top; height: 28px; width: 634px;">between&nbsp;<input
						name="FinancialAidDown"> and&nbsp;<input
						name="FinancialAidUp"> <br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 26px; width: 271px;">by
						NUMBER OF APPLICANTS:<br>
					</td>
					<td style="vertical-align: top; height: 26px; width: 634px;">between&nbsp;<input
						name="ApplicantsDown"> and&nbsp;<input name="ApplicantsUp">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 29px; width: 271px;">by
						% ADMITTED:<br>
					</td>
					<td style="vertical-align: top; height: 29px; width: 634px;">between&nbsp;<input
						name="AdmittedDown"> and&nbsp;<input name="AdmittedUp">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 29px; width: 271px;">by
						% ENROLLED:<br>
					</td>
					<td style="vertical-align: top; height: 29px; width: 634px;">between&nbsp;<input
						name="EnrolledDown"> and&nbsp;<input name="EnrolledUp">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 29px; width: 271px;">by
						ACADEMICS SCALE (1-5):<br>
					</td>
					<td style="vertical-align: top; height: 29px; width: 634px;">between&nbsp;<input
						name="AcademicsDown"> and&nbsp;<input name="AcademicsUp">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 28px; width: 271px;">by
						SOCIAL SCALE (1-5):<br>
					</td>
					<td style="vertical-align: top; height: 28px; width: 634px;">between&nbsp;<input
						name="SocialDown"> and&nbsp;<input name="SocialUp">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 28px; width: 271px;">by
						QUALITY OF LIFE SCALE (1-5):<br>
					</td>
					<td style="vertical-align: top; height: 28px; width: 634px;">between&nbsp;<input
						name="LifeDown"> and&nbsp;<input name="LifeUp">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 147px; width: 271px;">by
						EMPHASES:<br>
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
	</form>
</body>
</html>
