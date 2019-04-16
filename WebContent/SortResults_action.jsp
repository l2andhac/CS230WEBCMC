<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.*,cmc.entity.*,cmc.controller.*,cmc.interaction.*"
    pageEncoding="UTF-8"%>
    
<%
UserInteraction userInt = (UserInteraction) session.getAttribute("ai");
String by = request.getParameter("sortBy");
Set<University> list = (Set<University>) request.getAttribute("SortList");
int size = list.size();
//out.println(size);

if(by.equals("e")){
	out.println("Expenses and "+list.toString());
	
} else if(by.equals("a")){
	out.println("Admission");
} else if(by.equals("n")){
	out.println("Number of Students");
}

/*if(request.getParameter("sortBy").equals("e")){
	List<University> sortedL = userInt.sortResults(list, 'e');
	request.setAttribute("SortedSchoolList", sortedL);
	request.getRequestDispatcher("ViewSortedResults.jsp").forward(request, response);
}
else if(request.getParameter("sortBy").equals("a")){
	List<University> sortedL = userInt.sortResults(list, 'a');
	request.setAttribute("SortedSchoolList", sortedL);
	request.getRequestDispatcher("ViewSortedResults.jsp").forward(request, response);
}
else if(request.getParameter("sortBy").equals("n")){
	List<University> sortedL = userInt.sortResults(list, 'n');
	request.setAttribute("SortedSchoolList", sortedL);
	request.getRequestDispatcher("ViewSortedResults.jsp").forward(request, response);
} */


%>
<%--
<option value="" selected="selected">Choose One</option>
<option value="<%if(request.getParameter("view").equals("Vertical")) {out.println(selected="selected"); } %>">Vertical</option>
--%>