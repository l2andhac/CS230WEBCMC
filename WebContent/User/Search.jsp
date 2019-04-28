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
	var location = document.forms["Search"]["Location"].value);
	var control = document.forms["Search"]["Control"].value);
	var numStuLo = parseInt(document.forms["Search"]["NumStudentsDown"].value);
	var numStuUp = parseInt(document.forms["Search"]["NumStudentsUp"].value);
	var femLo = parseInt(document.forms["Search"]["FemaleDown"].value);
	var femUp = parseInt(document.forms["Search"]["FemaleUp"].value);
	var verbLo = parseInt(document.forms["Search"]["VerbalDown"].value);
	var verbUp = parseInt(document.forms["Search"]["VerbalUp"].value);
	var mathLo = parseInt(document.forms["Search"]["MathDown"].value);
	var mathUp = parseInt(document.forms["Search"]["MathUp"].value);
	var expensesLo = parseInt(document.forms["Search"]["ExpensesDown"].value);
	var expensesUp = parseInt(document.forms["Search"]["ExpensesUp"].value);
	var finAidLo = parseInt(document.forms["Search"]["FinancialAidDown"].value);
	var finAidUp = parseInt(document.forms["Search"]["FinancialAidUp"].value);
	var appLo = parseInt(document.forms["Search"]["ApplicantsDown"].value);
	var appUp = parseInt(document.forms["Search"]["ApplicantsUp"].value);
	var admLo = parseInt(document.forms["Search"]["AdmittedDown"].value);
	var admUp = parseInt(document.forms["Search"]["AdmittedUp"].value);
	var enrolLo = parseInt(document.forms["Search"]["EnrolledDown"].value);
	var enrolUp = parseInt(document.forms["Search"]["EnrolledUp"].value);
	var acadLo = parseInt(document.forms["Search"]["AcademicsDown"].value);
	var acadUp = parseInt(document.forms["Search"]["AcademicsUp"].value);
	var socLo = parseInt(document.forms["Search"]["SocialDown"].value);
	var socUp = parseInt(document.forms["Search"]["SocialUp"].value);
	var lifeLo = parseInt(document.forms["Search"]["LifeDown"].value);
	var lifeUp = parseInt(document.forms["Search"]["LifeUp"].value);
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
	if (femUp > 100 || finAidUp > 100 || admUp > 100 || enrolUp > 100|| femLo > 100 || finAidLo > 100
			|| admLo > 100){
		alert("Percents have a maximum value of 100");
		return false;
	}
	if(mathUp > 800 || verbUp > 800){
		alert("SAT scores have a maximum value of 800");
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
					<td style="vertical-align: top; height: 31px; width: 634px;"><select
						name="Location">
						
						<option></option>
						<option value="SUBURBAN">Suburban</option>
						<option value="URBAN">Urban</option>
						<option value="SMALL-CITY">Small-City</option>
						</select>
						</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 31px; width: 271px;">by
						CONTROL:<br>
					</td>
					<td style="vertical-align: top; height: 31px; width: 634px;"><select
						name="Control">
						<option></option>
						<option value="PRIVATE">Private</option>
						<option value="STATE">State</option>
						<option value="City">City</option>
						</select></td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 30px; width: 271px;">by
						NUMBER OF STUDENTS:<br>
					</td>
					<td style="vertical-align: top; height: 30px; width: 634px;">between&nbsp;<input
						name="NumStudentsDown" type="number" min="1"> and <input name="NumStudentsUp" type="number" min="1"><br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 31px; width: 271px;">by
						% FEMALE:<br>
					</td>
					<td style="vertical-align: top; height: 31px; width: 634px;">between&nbsp;<input
						name="FemaleDown" type="number" min="1" max="100"> and&nbsp;<input name="FemaleUp" type="number" min="1" max="100">
						<br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 30px; width: 271px;">by
						SAT VERBAL:<br>
					</td>
					<td style="vertical-align: top; height: 30px; width: 634px;">between&nbsp;<input
						name="VerbalDown" type="number" min="1"> and&nbsp;<input name="VerbalUp" type="number" min="1" max="100">
						<br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 30px; width: 271px;">by
						SAT MATH:<br>
					</td>
					<td style="vertical-align: top; height: 30px; width: 634px;">between&nbsp;<input
						name="MathDown" type="number" min="1"> and&nbsp;<input name="MathUp" type="number" min="1"> <br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 29px; width: 271px;">by
						EXPENSES:<br>
					</td>
					<td style="vertical-align: top; height: 29px; width: 634px;">between&nbsp;<input
						name="ExpensesDown" type="number" min="1"> and&nbsp;<input name="ExpensesUp" type="number" min="1">
						<br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 28px; width: 271px;">by
						% FINANCIAL AID:<br>
					</td>
					<td style="vertical-align: top; height: 28px; width: 634px;">between&nbsp;<input
						name="FinancialAidDown" type="number" min="1" max="100"> and&nbsp;<input
						name="FinancialAidUp" type="number" min="1" max="100"> <br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 26px; width: 271px;">by
						NUMBER OF APPLICANTS:<br>
					</td>
					<td style="vertical-align: top; height: 26px; width: 634px;">between&nbsp;<input
						name="ApplicantsDown" type="number" min="1"> and&nbsp;<input name="ApplicantsUp" type="number" min="1">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 29px; width: 271px;">by
						% ADMITTED:<br>
					</td>
					<td style="vertical-align: top; height: 29px; width: 634px;">between&nbsp;<input
						name="AdmittedDown" type="number" min="1" max="100"> and&nbsp;<input name="AdmittedUp" type="number" min="1" max="100">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 29px; width: 271px;">by
						% ENROLLED:<br>
					</td>
					<td style="vertical-align: top; height: 29px; width: 634px;">between&nbsp;<input
						name="EnrolledDown" type="number" min="1" max="100"> and&nbsp;<input name="EnrolledUp" type="number" min="1" max="100">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 29px; width: 271px;">by
						ACADEMICS SCALE (1-5):<br>
					</td>
					<td style="vertical-align: top; height: 29px; width: 634px;">between&nbsp;<input
						name="AcademicsDown" type="number" min="1" max="5"> and&nbsp;<input name="AcademicsUp" type="number" min="1" max="5">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 28px; width: 271px;">by
						SOCIAL SCALE (1-5):<br>
					</td>
					<td style="vertical-align: top; height: 28px; width: 634px;">between&nbsp;<input
						name="SocialDown" type="number" min="1" max="5"> and&nbsp;<input name="SocialUp" type="number" min="1" max="5">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top; height: 28px; width: 271px;">by
						QUALITY OF LIFE SCALE (1-5):<br>
					</td>
					<td style="vertical-align: top; height: 28px; width: 634px;">between&nbsp;<input
						name="LifeDown" type="number" min="1" max="5"> and&nbsp;<input name="LifeUp" type="number" min="1" max="5">
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
