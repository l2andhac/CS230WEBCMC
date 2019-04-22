<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.*,cmc.entity.*,cmc.controller.*,cmc.interaction.*"
    pageEncoding="UTF-8"%>
    
<%
try{
UserInteraction userInt = (UserInteraction) session.getAttribute("ai");
//String by = (String) request.getAttribute("sorting");
//Set<University> aList = (Set<University>) session.getAttribute("ListToSort");
List<University> aList = (List<University>) session.getAttribute("ListToSort");
//session.invalidate();
//int size = aList.size();
//System.out.println(size);

if(request.getParameter("sortBy").equals("e")){
	List<University> sortedL = userInt.sortResults(aList, 'e');
	request.setAttribute("SchoolList", sortedL);
	request.getRequestDispatcher("SearchResults.jsp").forward(request, response);
	
} 
else if(request.getParameter("sortBy").equals("a")){
	List<University> sortedL = userInt.sortResults(aList, 'a');
	request.setAttribute("SchoolList", sortedL);
	request.getRequestDispatcher("SearchResults.jsp").forward(request, response);
}
else if(request.getParameter("sortBy").equals("n")){
	List<University> sortedL = userInt.sortResults(aList, 'n');
	request.setAttribute("SchoolList", sortedL);
	request.getRequestDispatcher("SearchResults.jsp").forward(request, response);
}
}catch(Exception e){
	out.println(e.getMessage());
}


%>
<%--
<option value="" selected="selected">Choose One</option>
<option value="<%if(request.getParameter("view").equals("Vertical")) {out.println(selected="selected"); } %>">Vertical</option>
--%>