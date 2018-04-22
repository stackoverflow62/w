

<%@page language="java" import="controller.*, interaction.*, entity.*"%>

<% 	String u = request.getParameter("Username");
	String p = request.getParameter("Password");
	
	DatabaseController dbc = new DatabaseController();
	Account currentUser = new Account(u,p);
	session.setAttribute("currentUser", currentUser);
	session.setAttribute("dbc", dbc);
	int i = dbc.login(u, p);
	
	if(i == 0){
		response.sendRedirect("user-home.jsp");
	}
	else if(i ==1){
		response.sendRedirect("admin-home.jsp");
	}
	else if(i == -4){
		response.sendRedirect("login.jsp?Error=-4");
	}
	else if(i == -2){
		response.sendRedirect("login.jsp?Error=-2");
	}
	else if(i == -1){
		response.sendRedirect("login.jsp?Error=-1");
	}
	
	
	/* 
	
	DatabaseController dbc = new DatabaseController();
	
	String[] userInfo = dbc.getUser(u);
	
	
	if(!userInfo[2].equals(u)){
		
		response.sendRedirect("login.jsp?Error=-1");
	}
	else if (!userInfo[3].equals(p))
	{
		response.sendRedirect("login.jsp?Error=-2");
	}
	else if (userInfo[4].equals("No such user found"))
	{
		response.sendRedirect("login.jsp?Error=-5");
	}
	else if(userInfo[5] == "Y"){
		if(userInfo[4] == "u"){
			StudentInteraction sc = new StudentInteraction(u,p);
			sc.login(u,p);
			session.setAttribute("sc", sc);
			response.sendRedirect("user-home.jsp");
		}
		else{
			AdminInteraction ac = new AdminInteraction(u,p);
			session.setAttribute("ac", ac);
			response.sendRedirect("admin-home.jsp");
		}
		}
	*/
	%>