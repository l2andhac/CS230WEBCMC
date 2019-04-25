<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="cmc.entity.*,cmc.controller.*,cmc.interaction.*,java.util.*" pageEncoding="UTF-8"%>
<%

String name = request.getParameter("SchoolName");
String state = request.getParameter("State");
String location = request.getParameter("Location");
String control = request.getParameter("Control");
String enrollmentLo = (request.getParameter("NumStudentsDown"));
String enrollmentUp = (request.getParameter("NumStudentsUp"));
String percentFemaleLo = (request.getParameter("FemaleDown"));
String percentFemaleUp = (request.getParameter("FemaleUp"));
String satVerbLo = (request.getParameter("VerbalDown"));
String satVerbUp = (request.getParameter("VerbalUp"));
String satMathLo = (request.getParameter("MathDown"));
String satMathUp = (request.getParameter("MathUp"));
String expensesLo = (request.getParameter("ExpensesDown"));
String expensesUp = (request.getParameter("ExpensesUp"));
String percentFinancialAidLo = (request.getParameter("FinancialAidDown"));
String percentFinancialAidUp = (request.getParameter("FinancialAidUp"));
String applicantsLo = (request.getParameter("ApplicantsDown"));
String applicantsUp = (request.getParameter("ApplicantsUp"));
String percentAdmittedLo = (request.getParameter("AdmittedDown"));
String percentAdmittedUp = (request.getParameter("AdmittedUp"));
String percentEnrollLo = (request.getParameter("EnrolledDown"));
String percentEnrollUp = (request.getParameter("EnrolledUp"));
String academicScaleLo = (request.getParameter("AcademicsDown"));
String academicScaleUp = (request.getParameter("AcademicsUp")); 
String socialScaleLo = (request.getParameter("SocialDown"));
String socialScaleUp = (request.getParameter("SocialUp"));
String qualOfLifeScaleLo = (request.getParameter("LifeDown"));
String qualOfLifeScaleUp = (request.getParameter("LifeUp"));
String emphasis1 = request.getParameter("Emphasis1");
String emphasis2 = request.getParameter("Emphasis2");
String emphasis3 = request.getParameter("Emphasis3");
String emphasis4 = request.getParameter("Emphasis4");
String emphasis5 = request.getParameter("Emphasis5");

List<String> emph = new ArrayList<String>();
if(!emphasis1.equals("")){
emph.add(emphasis1.toUpperCase());
}
if(!emphasis2.equals("")){
emph.add(emphasis2.toUpperCase());
}
if(!emphasis3.equals("")){
emph.add(emphasis3.toUpperCase());
}
if(!emphasis4.equals("")){
emph.add(emphasis4.toUpperCase());
}
if(!emphasis5.equals("")){
emph.add(emphasis5.toUpperCase());
}


if(enrollmentLo == ""){
	enrollmentLo = "-1";
}
if(enrollmentUp == ""){
	enrollmentUp = "-1";
}
if(percentFemaleLo == ""){
	percentFemaleLo = "-1";
}
if(percentFemaleUp == ""){
	percentFemaleUp = "-1";
}
if(satVerbLo == ""){
	satVerbLo = "-1";
}
if(satVerbUp == ""){
	satVerbUp = "-1";
}
if(satMathUp == ""){
	satMathUp = "-1";
}
if(satMathLo == ""){
	satMathLo = "-1";
}
if(expensesLo == ""){
	expensesLo = "-1";
}
if(expensesUp == ""){
	expensesUp = "-1";
}
if(percentFinancialAidLo == ""){
	percentFinancialAidLo = "-1";
}
if(percentFinancialAidUp == ""){
	percentFinancialAidUp = "-1";
}
if(applicantsLo == ""){
	applicantsLo = "-1";
}
if(applicantsUp == ""){
	applicantsUp = "-1";
}
if(percentAdmittedLo == ""){
	percentAdmittedLo = "-1";
}
if(percentAdmittedUp == ""){
	percentAdmittedUp = "-1";
}
if(percentEnrollLo == ""){
	percentEnrollLo = "-1";
}
if(percentEnrollUp == ""){
	percentEnrollUp = "-1";
}
if(academicScaleLo == ""){
	academicScaleLo = "-1";
}
if(academicScaleUp == ""){
	academicScaleUp = "-1";
}
if(socialScaleLo == ""){
	socialScaleLo = "-1";
}
if(socialScaleUp == ""){
	socialScaleUp = "-1";
}
if(qualOfLifeScaleLo == ""){
	qualOfLifeScaleLo = "-1";
}
if(qualOfLifeScaleUp == ""){
	qualOfLifeScaleUp = "-1";
}

UserInteraction userInt = (UserInteraction) session.getAttribute("ai");

List<University> list = new ArrayList<University>();
list = userInt.searchSchool(name.toUpperCase(), state.toUpperCase(), location.toUpperCase(), control.toUpperCase(), 
		Integer.parseInt(enrollmentLo), Integer.parseInt(enrollmentUp), Integer.parseInt(percentFemaleLo), 
		Integer.parseInt(percentFemaleUp), Integer.parseInt(satVerbLo), Integer.parseInt(satVerbUp), Integer.parseInt(satMathLo), 
		Integer.parseInt(satMathUp), Integer.parseInt(expensesLo), Integer.parseInt(expensesUp), 
		Integer.parseInt(percentFinancialAidLo), Integer.parseInt(percentFinancialAidUp), Integer.parseInt(applicantsLo), 
		Integer.parseInt(applicantsUp), Integer.parseInt(percentAdmittedLo), Integer.parseInt(percentAdmittedUp), 
		Integer.parseInt(percentEnrollLo), Integer.parseInt(percentEnrollUp), Integer.parseInt(academicScaleLo), 
		Integer.parseInt(academicScaleUp), Integer.parseInt(socialScaleLo), Integer.parseInt(socialScaleUp), 
		Integer.parseInt(qualOfLifeScaleLo), Integer.parseInt(qualOfLifeScaleUp), emph);
if(list==null){
	out.println("NO MATCHES FOUND");
	return;
}
request.setAttribute("SchoolList", list);
session.setAttribute("ListToSort", list);
//int si = list.size();
//out.println(si);
//response.sendRedirect("SearchResults.jsp?list="+list);
request.getRequestDispatcher("SearchResults.jsp").forward(request, response);
//request.getRequestDispatcher("SortResults_action.jsp").forward(request, response);

%>
