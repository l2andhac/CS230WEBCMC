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
try{
int numStudents;
double percFemale;
double SatVerb;
double SatMath;
double expen;
double percAid;
int apps;
double percA;
double percE;
int AScale;
int SScale;
int QScale;
	AdminInteraction ai = (AdminInteraction) session.getAttribute("ai");
	String name = request.getParameter("Name");
	String state = request.getParameter("State");
	String location = request.getParameter("Location");
	String control = request.getParameter("Control");
	String numStudent = request.getParameter("NumOfStudents");
	if(!numStudent.equals("")){
		numStudents = Integer.parseInt(numStudent);
	}else{
		numStudents = -1;
	}
	String percFem = request.getParameter("PercentFemale");
	if(!percFem.equals("")){
		percFemale = Double.parseDouble(percFem);
	}else{
		percFemale = -1;
	}
	String satVerb = request.getParameter("SATVerb");
	if(!satVerb.equals("")){
		SatVerb = Double.parseDouble(satVerb);
	}else{
		SatVerb = -1;
	}
	String satMath = request.getParameter("SATMath");
	if(!satMath.equals("")){
		SatMath = Double.parseDouble(satMath);
	}else{
		SatMath = -1;
	}
	String expenses = request.getParameter("Expenses");
	if(!expenses.equals("")){
		expen = Double.parseDouble(expenses);
	}else{
		expen = -1;
	}
	String perFinAid = request.getParameter("PercentFinAid");
	if(!perFinAid.equals("")){
		percAid = Double.parseDouble(perFinAid);
	}else{
		percAid = -1;
	}
	String app = request.getParameter("NumApplicants");
	if(!app.equals("")){
		apps = Integer.parseInt(app);
	}else{
		apps = -1;
	}
	String percAdm = request.getParameter("PercentAdmitted");
	if(!percAdm.equals("")){
		percA = Double.parseDouble(percAdm);
	}else{
		percA = -1;
	}
	String percEnr = request.getParameter("PercentEnrolled");
	if(!percEnr.equals("")){
		percE = Double.parseDouble(percEnr);
	}else{
		percE = -1;
	}
	String aScale = request.getParameter("AcademicScale");
	if(!aScale.equals("")){
		AScale = Integer.parseInt(aScale);
	}else{
		AScale = -1;
	}
	String sScale = request.getParameter("SocialScale");
	if(!sScale.equals("")){
		SScale = Integer.parseInt(sScale);
	}else{
		SScale = -1;
	}
	String qScale = request.getParameter("QualScale");
	if(!qScale.equals("")){
		QScale =Integer.parseInt(qScale);
	}else{
		QScale = -1;
	}
	String e1 = request.getParameter("Emphases1");
	String e2 = request.getParameter("Emphases2");
	String e3 = request.getParameter("Emphases3");
	String e4 = request.getParameter("Emphases4");
	String e5 = request.getParameter("Emphases5");
	List<String> emphesis = new ArrayList<String>();
	if(!e1.equals("")){
	emphesis.add(e1.toUpperCase());
	}
	if(!e1.equals("")){
		emphesis.add(e1.toUpperCase());
		}
	if(!e2.equals("")){
		emphesis.add(e2.toUpperCase());
		}
	if(!e3.equals("")){
		emphesis.add(e3.toUpperCase());
		}
	if(!e4.equals("")){
		emphesis.add(e4.toUpperCase());
		}
	if(!e5.equals("")){
		emphesis.add(e5.toUpperCase());
		}
	ai.addSchool(name.toUpperCase(), state.toUpperCase(), location.toUpperCase(), control.toUpperCase(), numStudents,
			percFemale, SatVerb, SatMath, expen, percAid, apps, percA, percE,
			AScale, SScale, QScale, emphesis);
	response.sendRedirect("ManageUniversities.jsp");
}catch(Exception e){
	String err = e.getMessage();
	request.setAttribute("Error", err);
    request.getRequestDispatcher("AddUniv.jsp").forward(request, response);  
}
	
%>

</body>
</html>