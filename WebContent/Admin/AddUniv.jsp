<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@include file="../verifyLogin.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
function validateForm(){
	var u = document.forms["AddUnivForm"]["Name"].value;
	if(u == ""){
		alert("Please fill out a unique name");
		return false;
	}
	var state = document.forms["AddUnivForm"]["State"].value;
	var location = document.forms["AddUnivForm"]["Location"].value;
	var control = document.forms["AddUnivForm"]["Control"].value;
	var numStu = parseInt(document.forms["AddUnivForm"]["NumofStudents"].value);
	var fem = parseInt(document.forms["AddUnivForm"]["PercentFemale"].value);
	var verb = parseInt(document.forms["AddUnivForm"]["SATVerb"].value);
	var math = parseInt(document.forms["AddUnivForm"]["SATMath"].value);
	var expenses = parseInt(document.forms["AddUnivForm"]["Expenses"].value);
	var finAid = parseInt(document.forms["AddUnivForm"]["PercentFinAid"].value);
	var app = parseInt(document.forms["AddUnivForm"]["NumApplicants"].value);
	var adm = parseInt(document.forms["AddUnivForm"]["PercentAdmitted"].value);
	var enrol = parseInt(document.forms["AddUnivForm"]["PercentEnrolled"].value);
	var acad = parseInt(document.forms["AddUnivForm"]["AcademicScale"].value);
	var soc = parseInt(document.forms["AddUnivForm"]["SocialScale"].value);
	var life = parseInt(document.forms["AddUnivForm"]["QualScale"].value);
	var emp1 = document.forms["AddUnivForm"]["Emphasis1"].value;
	var emp2 = document.forms["AddUnivForm"]["Emphasis2"].value;
	var emp3 = document.forms["AddUnivForm"]["Emphasis3"].value;
	var emp4 = document.forms["AddUnivForm"]["Emphasis4"].value;
	var emp5 = document.forms["AddUnivForm"]["Emphasis5"].value;
	if(numStu <0 || fem < 0 || verb < 0||  math < 0 || expenses < 0  || finAid < 0  || app < 0  
			|| adm < 0  || enrol < 0 ||  acad < 0 || soc < 0 || life < 0){
		alert("No negative entries allowed. Please enter a positive value or leave the field blank");
		return false;
	if(math > 800 || verb > 800){
		alert("SAT scores can not be greater than 800");
		return false;
	}
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add New University</title>
</head>

<body style="background-image: url(../images/book.jpg); background-repeat: no-repeat; background-size: cover;">
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
<form action="AddUniv_action.jsp" name="AddUnivForm" onsubmit="return validateForm()">
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