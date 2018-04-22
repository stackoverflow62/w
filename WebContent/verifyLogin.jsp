<%@page language="java" import="edu.csbsju.csci230.*,java.util.*"%>

<%
	UserController verifyuc = (UserController)session.getAttribute("uc");
	if(verifyuc == null)
	{
		response.sendRedirect("login.jsp?Error=-4");
		return;
	}
	else if (verifyuc.isLoggedIn() == false)
	{
		response.sendRedirect("login.jsp?Error=-4");
		return;
	}
%>