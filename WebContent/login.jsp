<!DOCTYPE html>

<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="icon" href="lib/favicon.ico">
<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="lib/login.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style type="text/css">
.form-signin {
	max-width: 500px;
	padding: 15px;
	margin: 0 auto;
}

body {
	padding-top: 70px;
}

.jumbotron {
	padding-top: 0px;
	padding-bottom: 0px;
	color: inherit;
	background-color: #eee;
}

.footer {
	position: absolute;
	bottom: 0;
	width: 100%;
	/* Set the fixed height of the footer here */
	height: 30px;
	background-color: #f5f5f5;
}

footer .container{
margin-top:8px;
font-family: 'Helvetica Neue';
	font-size: 12px;
	font-style: normal;
	font-variant: normal;
	font-weight: 70;
	line-height: 13px;	
}
</style>

<title>Login</title>

</head>

<body>



	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp">Masim<span
					style="color: red">lab</span></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">

				<ul class="nav navbar-nav">
					<li><a href="info.jsp">More info</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<!-- <li><a href="validation.jsp?Logout=true">Logout</a></li> -->

					<li class="active"><a href="login.jsp"> Log In </a></li>
					<li><a href="register.jsp"> Sign Up </a></li>
				</ul>

			</div>
		</div>
	</nav>

	<div class="container">
		<div class="jumbotron">
			<h1>Sign In</h1>
			<p>
				Access you tailored Masim<span style="color: red">lab</span> content
			</p>
		</div>

		<form class="form-signin" action="./Login" method="POST">
			<!-- 	<h2 class="form-signin-heading">
				Sign into Masim<span style="color: red">lab</span>
			</h2> -->
			<h2 class="form-signin-heading">Please fill in your login details</h2>

			<div class="form-group">
				<label for="username" class="sr-only">Email address</label> <input
					type="text" id="username" class="form-control"
					placeholder="Username" name="username" required autofocus>
			</div>

			<div class="form-group">
				<label for="password" class="sr-only">Password</label> <input
					type="password" id="password" class="form-control"
					placeholder="Password" name="password" required>
			</div>

			<div class="form-group">
				<div class="checkbox">
					<a href="register.jsp"> Don't have an account?</a>
				</div>
			</div>

			<button class="btn btn-lg btn-primary btn-block" type="submit">
				Sign in</button>

		</form>

	</div>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">About Masimlab</h4>
						</div>
						<div class="modal-body">...</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>


	<footer class="footer">
		<div class="container">
			<p class="pull-right">
				<a href="#">Back to top</a>
			</p>
			<p>
				&copy; 2015 Masim<span style="color: red">lab</span>, Inc. &middot;
				<a href="#">Privacy</a> &middot; <a href="#">Terms</a> &middot; <a
					data-toggle="modal" href="#myModal">About Us</a>
			</p>
		</div>
	</footer>


<script type="text/javascript" src="lib/jquery2.js"></script>
<script type="text/javascript" src=lib/bootstrap/js/bootstrap.min.js></script>


</body>
</html>

