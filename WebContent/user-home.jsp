<!DOCTYPE html>
<html>
<%@page language="java" import="controller.*, interaction.*, entity.*, java.util.*"%>
<%
	String u = request.getParameter("u");
	String p = request.getParameter("p");
	
	DatabaseController dbc = (DatabaseController)session.getAttribute("dbc");
	Account currentUser = (Account)session.getAttribute("currentUser");
	String[] userInfo = dbc.getUser(currentUser.getUsername());
	StudentInteraction sfc = new StudentInteraction(userInfo[0], userInfo[1], userInfo[3]);
	//String[][] savedUni = dbc.getSavedByUser();
	ArrayList<String> savedUni = sfc.viewSavedUniversities(userInfo[2]);



%>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Home</title>
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
        <div class="container"><a class="navbar-brand logo" href="index.jsp" style="color:rgba(255,255,255,0.9);">Student Home</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
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
                    <h2 style="color:rgb(255,117,117);">Welcome, <%= userInfo[0] %></h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc quam urna, dignissim nec auctor in, mattis vitae leo.</p>
                </div>
                <div class="block-content">
                    <div class="faq-item">
                        <div class="answer"></div>
                    </div>
                    <div class="faq-item">
                        <div>
                            <ul class="nav nav-tabs">
                                <li class="nav-item"><a class="nav-link active" role="tab" data-toggle="tab" href="#tab-1" style="color:rgb(255,117,117);">Universities</a></li>
                                <li class="nav-item"><a class="nav-link" role="tab" data-toggle="tab" href="#tab-2" style="color:rgb(255,117,117);">Profile</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" role="tabpanel" id="tab-1">
                                    <p>Here are your Saved Universities</p>
                                    <%for(String o : savedUni){
                                    	System.out.println(o);
                                    	%>
                                    	<div class="row">
                                        <div class="col">
                                            <p><%= o %></p>
                                        </div>
                                        <div class="col"></div>
                                        <div class="col">
                                            <div class="btn-toolbar">
                                                <div class="btn-group float-right" role="group"><button class="btn btn-primary" type="button" style="background-color:rgb(255,116,116);">View</button><button class="btn btn-primary" type="button" style="background-color:rgb(255,0,92);">Delete</button></div>
                                                <div
                                                    class="btn-group" role="group"></div>
                                        </div>
                                    </div>
                                </div>
                                    <% 
                                    }%>
                                    
                                    
                            </div>
                            <div class="tab-pane" role="tabpanel" id="tab-2">
                                <p>Manage Your Profile</p>
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
                                <div class="row">
                                    <div class="col">
                                        <p><%= userInfo[0] + " " + userInfo[1] %>&nbsp;</p>
                                    </div>
                                    <div class="col">
                                        <p><%= userInfo[2] %></p>
                                    </div>
                                    <div class="col">
                                        <p><%= userInfo[3] %></p>
                                    </div>
                                    <div class="col">
                                        <p><%= userInfo[4] %></p>
                                    </div>
                                    <div class="col">
                                        <p><%= userInfo[5] %></p>
                                    </div>
                                    <div class="col">
                                        <div class="btn-toolbar">
                                            <div class="btn-group" role="group"><button class="btn btn-primary" type="button">Edit</button></div>
                                            <div class="btn-group" role="group"></div>
                                        </div>
                                    </div>
                                </div>
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
