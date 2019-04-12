<%@page language="java" import="cmc.interaction.*" import="cmc.entity.*"
	import="java.util.*"%>
<html>
<head>
<title></title>
</head>
<body>
	<%
		AdminInteraction ai = (AdminInteraction) session.getAttribute("ai");
	%>
	Hello Admin
	<%=ai.getUsername()%>
	<table style="text-align: left; width: 100%;" border="1"
		cellpadding="2" cellspacing="2">
		<tbody>
			<tr align="center">

				<td colspan="8" rowspan="1" style="vertical-align: top;"><a
					href="AddAccount.jsp">ADD A USER</a></td>

			</tr>
			<tr>
				<td style="vertical-align: top;">Edit</td><!-- 
				<td style="vertical-align: top; text-align: center;">Full name
				</td> -->
				<td style="vertical-align: top; text-align: center;">Username</td>
				<!-- <td style="vertical-align: top; text-align: center;">Password</td>
				<td style="vertical-align: top; text-align: center;">Type</td>
				<td style="vertical-align: top; text-align: center;">Status</td> -->
				<td style="vertical-align: top;">Delete</td>
			</tr>

			<%
				Set<String> allUsers = ai.viewAllAccounts();
				for (String u : allUsers) {
					out.println("<tr>");
					out.println("<td style=\"vertical-align: top;\">");
					out.println("<form method=\"post\" action=\"EditAccount.jsp\" name=\"Edit\">");
					out.println("<input name=\"Edit\" value=\"Edit\" type=\"submit\"> <input");
					out.println("name=\"Username\" value=" + u + " type=\"hidden\">");
					out.println("</form>");
					out.println("</td>");
					out.println("<td style=\"vertical-align: top;\">" + u + "</td>");
					/* out.println("<td style=\"vertical-align: top;\">" + u.getfName() + " " + u.getlName() + "</td>");
					
					out.println("<td style=\"vertical-align: top;\">" + u.getPassword() + "</td>");
					out.println("<td style=\"vertical-align: top;\">" + u.getType() + "</td>");
					out.println("<td style=\"vertical-align: top;\">" + u.getStatus() + "</td>"); */
					out.println("<td style=\"vertical-align: top;\">");
					out.println("<form method=\"post\" action=\"Delete.jsp\" name=\"Delete\">");
					out.println("<input name=\"Delete\" value=\"Delete\" type=\"submit\"> <input");
					out.println("name=\"Username\" value=" + u + " type=\"hidden\">");
					out.println("</form>");
					out.println("</td>");
					out.println("</tr>");
				}
			%>
			
				
					
						
				
			
			
		</tbody>
	</table>
</body>
</html>

