<!DOCTYPE html>
<%@page language="java" import="controller.*, interaction.*,java.util.ArrayList, entity.*"%>
<html>
<%
	String u = request.getParameter("u");
	String p = request.getParameter("p");
	
	DatabaseController dbc = (DatabaseController)session.getAttribute("dbc");
	Account currentUser = (Account)session.getAttribute("currentUser");
	String[] user = dbc.getUser("nadmin");

	String[] fn = dbc.getUser(currentUser.getUsername());

	
	String first, last, pass, us, type, status;
	
	String[][] au = dbc.getUsers();
	String[][] uni = dbc.getListUniversities();
%>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin page</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i,600,600i">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/Footer-Clean.css">
    <link rel="stylesheet" href="assets/css/Table-with-search.css">
    <link rel="stylesheet" href="assets/css/Table-with-search.css">
    <link rel="stylesheet" href="assets/css/untitled.css">
</head>

<body>

    <nav class="navbar navbar-light navbar-expand-lg fixed-top bg-dark clean-navbar">
        <div class="container"><a class="navbar-brand logo" href="index.html" style="color:rgba(255,255,255,0.9);">Admin Home</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div
                class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav ml-auto"></ul>
                <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item" role="presentation"><a class="nav-link" href="index.jsp" style="color:rgba(255,255,255,0.5);">Home</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="search.jsp" style="color:rgba(255,255,255,0.5);">Search</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link login-page" href="login.jsp" style="color:rgba(255,255,255,0.5);">Log out</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="contact-us.jsp" style="color:rgba(255,255,255,0.5);">Contact Us</a></li>
                </ul>
        </div>
        </div>
    </nav>
    <main class="page faq-page">
        <section class="clean-block clean-faq dark">
            <div class="container">
                <div class="block-heading">
                    <h2 class="text-info">Welcome, <%=fn[0] %></h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc quam urna, dignissim nec auctor in, mattis vitae leo.</p>
                </div>
                <div class="block-content">
                    <div class="faq-item">
                        <h4 class="question">Use section below to make changes and manage users and universites</h4>
                        <div class="answer"></div>
                    </div>
                    <div class="faq-item">
                        <div>
                            <ul class="nav nav-tabs">
                                <li class="nav-item"><a class="nav-link" role="tab" data-toggle="tab" href="#tab-1">Universities</a></li>
                                <li class="nav-item"><a class="nav-link" role="tab" data-toggle="tab" href="#tab-2">Users</a></li>
                                <li class="nav-item"><a class="nav-link active" role="tab" data-toggle="tab" href="#tab-3">Inquiries</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane" role="tabpanel" id="tab-1"><button class="btn btn-primary float-right" type="button" style="background-color:#ff7474;">Add School</button>
                                    <p>Manage Universities</p>
                                    <%for(int i = 0; i < uni.length; i++)
                                	{
                                		String name = uni[i][0];
                                	
                                	%>
                                    <div class="row">
                                        <div class="col">
                                            <p><%= name %></p>
                                        </div>
                                        <div class="col"></div>
                                        <div class="col">
                                            <div class="btn-toolbar">
                                                <div class="btn-group" role="group"><button class="btn btn-primary" type="button">Edit</button><button class="btn btn-primary" type="button">View</button><button class="btn btn-primary" type="button">Delete</button></div>
                                                <div class="btn-group"
                                                    role="group"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <%} %>
                                </div>
                                <div class="tab-pane" role="tabpanel" id="tab-2">
                                    <p>Manage Users</p>
                                    <div class="row">

                                        <div class="col" style="height:30px;">
                                            <h5>Name</h5>
                                        </div>
                                        <div class="col" style="height:30px;">
                                            <h5>Username</h5>
                                        </div>
                                        <div class="col">
                                            <h5>Password</h5>
                                        </div>
                                        <div class="col" style="height:30px;">
                                            <h5>Type</h5>
                                        </div>
                                        <div class="col" style="height:30px;">
                                            <h5>Status</h5>
                                        </div>
                                        <div class="col" style="height:30px;">
                                            <h5>Actions</h5>
                                        </div>
                                    </div>

                                    <%for(int i = 0; i < au.length; i++)
                                	{
                                		
                                	
                                			first = au[i][0];
                                			last = au[i][1];
                                			us = au[i][2];
                                			pass = au[i][3];
                                			type = au[i][4];
                                			status = au[i][5];
                                		
                                		%><div class="row"><div class="col">
                                            <p><%= first + " " + last %></p>
                                        </div> <%

                                        %> <div class="col">
                                            <p><%= us %></p>
                                        </div><%
                                		%> <div class="col">
                                            <p><%= pass %></p>
                                        </div><%
                                        %><div class="col">
                                            <p><%= type %></p>
                                        </div><%
                                        %><div class="col">
                                        <p><%= status %></p>
                                    </div><%
                                        %><div class="col">
                                            <div class="btn-toolbar">
                                                <div class="btn-group" role="group"><button class="btn btn-primary" type="button">Edit</button><button class="btn btn-primary" type="button">Delete</button></div>
                                                <div class="btn-group" role="group"></div>
                                            </div>
                                          </div>
                                          </div>
                                          <%
                                		
                                	}
                                		%>
                                    </div>
                                <div class="tab-pane active" role="tabpanel" id="tab-3">
                                    <p>contact stuff here</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <footer class="page-footer dark">
        <div class="footer-copyright">
            <p>© 2018 Copyright Text</p>
        </div>
    </footer>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/login.js"></script>
    <script src="assets/js/Table-with-search.js"></script>
    <script src="assets/js/theme.js"></script>
</body>

</html>
