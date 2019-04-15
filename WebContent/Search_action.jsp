<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="cmc.entity.*,cmc.controller.*,cmc.interaction.*,java.util.*" pageEncoding="UTF-8"%>
<%
String name = request.getParameter("SchoolName");
String state = request.getParameter("State");
String location = request.getParameter("Location");
String control = request.getParameter("Control");
int enrollmentLo = Integer.parseInt(request.getParameter("NumStudentsDown"));
int enrollmentUp = Integer.parseInt(request.getParameter("NumStudentsUp"));
int percentFemaleLo = Integer.parseInt(request.getParameter("FemaleDown"));
int percentFemaleUp = Integer.parseInt(request.getParameter("FemaleUp"));
int satVerbLo = Integer.parseInt(request.getParameter("VerbalDown"));
int satVerbUp = Integer.parseInt(request.getParameter("VerbalUp"));
int satMathLo = Integer.parseInt(request.getParameter("MathDown"));
int satMathUp = Integer.parseInt(request.getParameter("MathUp"));
int expensesLo = Integer.parseInt(request.getParameter("ExpensesDown"));
int expensesUp = Integer.parseInt(request.getParameter("ExpensesUp"));
int percentFinancialAidLo = Integer.parseInt(request.getParameter("FinancialAidDown"));
int percentFinancialAidUp = Integer.parseInt(request.getParameter("FinancialAidUp"));
int applicantsLo = Integer.parseInt(request.getParameter("ApplicantsDown"));
int applicantsUp = Integer.parseInt(request.getParameter("ApplicantsUp"));
int percentAdmittedLo = Integer.parseInt(request.getParameter("AdmittedDown"));
int percentAdmittedUp = Integer.parseInt(request.getParameter("AdmittedUp"));
int percentEnrollLo = Integer.parseInt(request.getParameter("EnrolledDown"));
int percentEnrollUp = Integer.parseInt(request.getParameter("EnrolledUp"));
int academicScaleLo = Integer.parseInt(request.getParameter("AcademicsDown"));
int academicScaleUp = Integer.parseInt(request.getParameter("AcademicsUp")); 
int socialScaleLo = Integer.parseInt(request.getParameter("SocialDown"));
int socialScaleUp = Integer.parseInt(request.getParameter("SocialUp"));
int qualOfLifeScaleLo = Integer.parseInt(request.getParameter("LifeDown"));
int qualOfLifeScaleUp = Integer.parseInt(request.getParameter("LifeUp"));
String emphasis1 = request.getParameter("Emphasis1");
String emphasis2 = request.getParameter("Emphasis2");
String emphasis3 = request.getParameter("Emphasis3");
String emphasis4 = request.getParameter("Emphasis4");
String emphasis5 = request.getParameter("Emphasis5");

List<String> emph = new ArrayList<String>();
emph.add(emphasis1);
emph.add(emphasis2);
emph.add(emphasis3);
emph.add(emphasis4);
emph.add(emphasis5);

UserInteraction userInt = (UserInteraction) session.getAttribute("ai");

Set<University> list = new HashSet<University>();
list = userInt.searchSchool(name, state, location, control, enrollmentLo, enrollmentUp, percentFemaleLo, percentFemaleUp, satVerbLo, satVerbUp, 
		satMathLo, satMathUp, expensesLo, expensesUp, percentFinancialAidLo, percentFinancialAidUp, applicantsLo, applicantsUp, 
		percentAdmittedLo, percentAdmittedUp, percentEnrollLo, percentEnrollUp, academicScaleLo, academicScaleUp, socialScaleLo, 
		socialScaleUp, qualOfLifeScaleLo, qualOfLifeScaleUp, emph);
request.setAttribute("SchoolList", list);
//int si = list.size();
//out.println(si);
//response.sendRedirect("SearchResults.jsp");
request.getRequestDispatcher("SearchResults.jsp").forward(request, response);
%>