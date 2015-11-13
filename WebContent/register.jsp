<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script src="lib/jquery2.js" type="text/javascript"></script>
<script type="text/javascript" src=lib/bootstrap/js/bootstrap.min.js></script>
<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="lib/login.css" rel="stylesheet">

<style type="text/css">
.form-signin {
	max-width: 500px;
	padding: 15px;
	margin: 0 auto;
}

body {
	padding-top: 23px;
}

.jumbotron {
	padding-top: 10px;
	padding-bottom: 0px;
	color: inherit;
	background-color: #eee;
}

.footer {
	position: fixed;
	bottom: 0;
	width: 100%;
	/* Set the fixed height of the footer here */
	height: 30px;
	background-color: #f5f5f5;
}

footer .container {
	margin-top: 8px;
	font-family: 'Helvetica Neue';
	font-size: 12px;
	font-style: normal;
	font-variant: normal;
	font-weight: 70;
	line-height: 13px;
}

textarea {
	resize: none;
}
</style>

<title>Sign Up</title>
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
					<li><a href="login.jsp"> Log In </a></li>
					<li class="active"><a href="#"> Sign Up </a></li>
				</ul>

			</div>
		</div>
	</nav>

	<div class="container">

		<div class="jumbotron">
			<h1>Sign Up</h1>
			<p>
				Get started now by creating your Masim<span style="color: red">lab</span>
				profile
			</p>
		
		</div>

		<form class="form-signin" action="./Register" method="POST">
		
			<div class="row">
				<div class="form-group col-xs-6 col-md-6">
					<label for="username" class="sr-only">Email address</label> <input
						type="text" id="username" class="form-control input-sm"
						placeholder="Username" name="username" required autofocus>
				</div>
				<div class="form-group col-xs-6 col-md-6">
					<label for="password" class="sr-only">Password</label> <input
						type="password" id="password" class="form-control input-sm"
						placeholder="Password" name="password" required>
				</div>

			</div>

			<div class="form-group">
				<label for="firstName" class="sr-only">First Name</label> <input
					type="text" id="firstName" class="form-control input-sm"
					placeholder="First Name" name="firstName" required >
			</div>
			<div class="form-group">

				<label for="lastName" class="sr-only">Email address</label> <input
					type="text" id="lastName" class="form-control input-sm"
					placeholder="Last Name" name="lastName" required>
			</div>

			<div class="form-group">
				<textarea class="form-control input-sm" name="address" rows="3" placeholder=Address></textarea>
			</div>

			<div class="row">
			
			<div class="form-group col-xs-7 col-md-7">
					<label for="email" class="sr-only">Email</label> <input
						type="email" id="email" class="form-control input-sm" placeholder="E-mail"
						name="email" required>
				</div>
				<div class="form-group col-xs-5 col-md-5">
					<label for="phone" class="sr-only">Phone number</label> <input
						type="text" id="phone" class="form-control input-sm"
						placeholder="Phone number" name="phone" required>
				</div>
			</div>

			<div class="form-group">
				<div class="checkbox">
					<a href="login.jsp"> Already have an account?</a>
				</div>
			</div>
			
			<button class="btn btn-lg btn-primary btn-block" type="submit">
				Sign Up</button>

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
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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
