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
	<table style="text-align: left; width: 100%;" border="1"
		cellpadding="2" cellspacing="2">
		<tbody>
			<tr align="center">

				<td colspan="8" rowspan="1" style="vertical-align: top;">SCHOOL</td>

			</tr>
			<tr>
				<%
					//UserInteraction ui = (UserInteraction) session.getAttribute("ai");
					Set<University> list = (Set<University>) request.getAttribute("SchoolList");
					int size = list.size();
					out.println(size);
				%>
			</tr>
		</tbody>
	</table>
</body>
</html>