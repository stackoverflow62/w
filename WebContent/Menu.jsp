<%@page language="java" import="edu.csbsju.csci230.*,java.util.ArrayList"%>

<%@include file="verifyLogin.jsp" %>
<html>
<head>
<title></title>
</head>
<body>
<%
	
	UserController uc = (UserController)session.getAttribute("uc");

	User u = uc.getCurrentUser();
	
	String fn = u.getFullName();
	String un = u.getUsername();
	String pw = u.getPassword();
	char t = u.getType();
	char s = u.getStatus();
	
	ArrayList<User> au = uc.getAllUsers();
%>
Hello User <%out.println(un);%>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr align="center">

<td colspan="8" rowspan="1" style="vertical-align: top;"><a
href="Add.jsp">ADD A USER</a>
</td>

</tr>
<tr>
<td style="vertical-align: top;">
Edit</td>
<td style="vertical-align: top; text-align: center;">Name
</td>
<td style="vertical-align: top; text-align: center;">Username
</td>
<td style="vertical-align: top; text-align: center;">Password
</td>
<td style="vertical-align: top; text-align: center;">Type
</td>
<td style="vertical-align: top; text-align: center;">Status
</td>
<td style="vertical-align: top;">Action
</td>
</tr>


<%
	for(User user : au)
	{
		fn = user.getFullName();
		un = user.getUsername();
		pw = user.getPassword();
		t = user.getType();
		s = user.getStatus();
		%>
	<tr>
	<td style="vertical-align: top;">
	<form method="post" action="Edit.jsp" name="Edit">
    	<input name="Edit" value="Edit" type="submit">
    	<input name="Username" value= <%=un%> type="hidden">
	</form>
	</td>	
	<%
		out.println("<td>"+ fn + "</td>");
		out.println("<td>" + un + "</td>");
		out.println("<td>" + pw + "</td>");
		out.println("<td>" + t + "</td>");
		out.println("<td>" + s + "</td>");
		%>
		
		<td style="vertical-align: top;">
		<form method="post" action="Delete.jsp" name="Delete">
    		<input name="Delete" value="Delete" type="submit">
    		<input name="Username" value= <%=un%>  type="hidden">
		</form>
		</td>
		</tr>
	<%}%>
	<%
//<td style="vertical-align: top;"> out.println(un); 
//</td>
//<td style="vertical-align: top;"><% out.println(pw);
//</td>
//<td style="vertical-align: top;"><% out.println(t);
//</td>
//<td style="vertical-align: top;"><% out.println(s);
//</td>
%>

</tbody>
</table>
</body>
</html>

