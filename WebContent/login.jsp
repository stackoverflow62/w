<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i,600,600i">
    <link rel="stylesheet" href="assets/fonts/simple-line-icons.min.css">
</head>

<body>

    <nav class="navbar navbar-light navbar-expand-lg fixed-top bg-white clean-navbar">
        <div class="container"><a class="navbar-brand logo" href="index.jsp">CMC</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse"
                id="navcol-1">
                <ul class="nav navbar-nav ml-auto"></ul>
                <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item" role="presentation"><a class="nav-link" href="index.jsp">Home</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link active login-page" href="login.jsp">Log in</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="contact-us.jsp">Contact Us</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <main class="page login-page">
        <section class="clean-block clean-form dark">
            <div class="container">
                <div class="block-heading">
                <%
	String error = request.getParameter("Error");
                if(error == null){
                	%> <h2 class="text-info">Let's Get Started</h2> <%
                }
if(error != null)
{
	if (error.equals("-1"))
	{
		%><h2 class="text-info">Incorrect username was entered. Try Again</h2><%
		
	}
	else if (error.equals("-2"))
	{
		%><h2 class="text-info">Incorrect password was entered. Try Again</h2><%
		
	}
	else if (error.equals("-3"))
	{
		%><h2 class="text-info">There was a problem accessing the database, Contact Administrator</h2><%
		
	}
	else if (error.equals("-4"))
	{
		%><h2 class="text-info">User is not active"</h2><%
	}
	else if (error.equals("-5"))
	{
		%><h2 class="text-info">Username does not exist "</h2><%
	}
}
%>
                    
                    <p></p>
                </div>
                <form action="Login_action.jsp" name="Login">
                    <div class="form-group"><label for="username">Username</label><input name="Username" input class="form-control item" type="text" id="password"></div>
                    <div class="form-group"><label for="password">Password</label><input name="Password" input class="form-control" type="password" id="password"></div>
                    <div class="form-group"><td style="vertical-align: top; horizontal-align: center"><button class="btn btn-primary" type="submit">Login</button></form>
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
    <script src="assets/js/theme.js"></script>
    <script src="assets/js/login.js"></script>

</body>

</html>
