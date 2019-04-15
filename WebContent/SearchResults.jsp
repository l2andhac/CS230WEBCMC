<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*,cmc.entity.*,cmc.controller.*,cmc.interaction.*"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search Results</title>
</head>
<body>
	<%
		Set<University> list = (Set<University>) request.getAttribute("SchoolList");
	int size = list.size();
	out.println(size);
		
	%>

</body>
</html>