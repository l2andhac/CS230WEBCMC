<%@page language="java" import="cmc.interaction.*" import="cmc.entity.*"
	import="java.util.*"%>
	<%@include file="../verifyLoginAdmin.jsp" %>
<html>
<head>
<title></title>
</head>
<body>
	<%
		AdminInteraction ai = (AdminInteraction) session.getAttribute("ai");
		String anyErrors = (String) request.getAttribute("Error");
		String person = request.getParameter("name");
		if (anyErrors != null) {
%>
	<big><i style="color: red"> <%
		out.println(anyErrors + "<br>");
		}
%>
</i></big>
	<a href="AdminMenu.jsp">Return to menu</a><br>
	Hello Admin
	<%=ai.getAccount().getFirstName()%>
	<br>
	
<br>
	<table style="text-align: left; width: 100%;" border="1"
		cellpadding="2" cellspacing="2">
		<tbody>
			<tr align="center">

				<td colspan="8" rowspan="1" style="vertical-align: top;"><a
					href="AddAccount.jsp">ADD AN ACCOUNT</a></td>

			</tr>
			<tr>
			    <td style="vertical-align: top;">Deactivate</td>
				<td style="vertical-align: top;">Edit</td>
				<td style="vertical-align: top; text-align: left;">Full name
				</td>
				<td style="vertical-align: top; text-align: left;">Username</td>
				<td style="vertical-align: top; text-align: left;">Password</td>
				<td style="vertical-align: top; text-align: left;">Type</td>
				<td style="vertical-align: top; text-align: left;">Status</td>
				<td style="vertical-align: top;">Delete</td>
			</tr>

			<%
				List<Account> allUsers = ai.viewAllAccounts();
				for (Account u : allUsers) {
					out.println("<tr>");
					out.println("<td style=\"vertical-align: top;\">");
					out.println("<form method=\"post\" action=\"Deactive_Account.jsp\" name=\"Deactivate\">");
					out.println("<input name=\"Delete\" value=\"Deactivate\" type=\"submit\"> <input");
					out.println("name=\"Username\" value=\"" + u.getUsername() + "\" type=\"hidden\">");
					out.println("</form>");
					out.println("<td style=\"vertical-align: top;\">");//
					out.println("<form method=\"post\" action=\"EditAccount.jsp\" name=\"Edit\">");
					out.println("<input name=\"Edit\" value=\"Edit\" type=\"submit\"> <input");
					out.println("name=\"Username\" value=\"" + u.getUsername() + "\" type=\"hidden\">");
					out.println("</form>");
					out.println("</td>");
					out.println("<td style=\"vertical-align: top;\">" + u.getFirstName() + " " + u.getLastName() + "</td>");
					out.println("<td style=\"vertical-align: top;\">" + u.getUsername() + "</td>");
					out.println("<td style=\"vertical-align: top;\">" + u.getPassword() + "</td>");
					out.println("<td style=\"vertical-align: top;\">" + u.getUserType() + "</td>");
					out.println("<td style=\"vertical-align: top;\">" + u.getStatus() + "</td>"); 
					out.println("<td style=\"vertical-align: top;\">");
					out.println("<form method=\"post\" action=\"Delete.jsp\" name=\"Delete\">");
					out.println("<input name=\"Delete\" value=\"Delete\" type=\"submit\"> <input");
					out.println("name=\"Username\" value=\"" + u.getUsername() + "\" type=\"hidden\">");
					out.println("</form>");
					out.println("</td>");
					out.println("</tr>");
				}
			%>
			
				
					
						
				
			
			
		</tbody>
	</table>
</body>
</html>

