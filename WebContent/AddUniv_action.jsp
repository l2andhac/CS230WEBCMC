<%@ page language="java" import="cmc.interaction.*" import="cmc.entity.*" 
import="java.util.*" import="cmc.controller.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<%
	AdminInteraction ai = (AdminInteraction) session.getAttribute("ai");
	String name = request.getParameter("Name");
	String state = request.getParameter("State");
	String location = request.getParameter("Location");
	String control = request.getParameter("Control");
	int numStudents = Integer.parseInt(request.getParameter("NumOfStudents"));
	double percFemale = Double.parseDouble(request.getParameter("PercentFemale"));
	double satVerb = Double.parseDouble(request.getParameter("SATVerb"));
	double satMath = Double.parseDouble(request.getParameter("SATMath"));
	double expenses = Double.parseDouble(request.getParameter("Expenses"));
	double perFinAid = Double.parseDouble(request.getParameter("PercentFinAid"));
	int app = Integer.parseInt(request.getParameter("NumApplicants"));
	double percAdm = Double.parseDouble(request.getParameter("PercentAdmitted"));
	double percEnr = Double.parseDouble(request.getParameter("PercentEnrolled"));
	int aScale = Integer.parseInt(request.getParameter("AcademicScale"));
	int sScale = Integer.parseInt(request.getParameter("SocialScale"));
	int qScale = Integer.parseInt(request.getParameter("QualScale"));
	String e1 = request.getParameter("Emphases1");
	String e2 = request.getParameter("Emphases2");
	String e3 = request.getParameter("Emphases3");
	String e4 = request.getParameter("Emphases4");
	String e5 = request.getParameter("Emphases5");
	List<String> emphesis = new ArrayList<String>();
	emphesis.add(e1);
	emphesis.add(e2);
	emphesis.add(e3);
	emphesis.add(e4);
	emphesis.add(e5);
	ai.addSchool(name, state, location, control, numStudents,
			percFemale, satVerb, satMath, expenses, perFinAid, app, percAdm, percEnr,
			aScale, sScale, qScale, emphesis);
	response.sendRedirect("ManageUniversities.jsp");
	
%>

</body>
</html>