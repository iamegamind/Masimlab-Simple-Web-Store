<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Login</title>

<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="lib/bootstrap/css/bootstrap.min.css"
	type="text/css">

<!-- Custom Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="lib/libe/font-awesome/css/font-awesome.min.css" type="text/css">

<!-- Plugin CSS -->
<link rel="stylesheet" href="lib/libe/css/animate.min.css"
	type="text/css">

<!-- Custom CSS -->
<link rel="stylesheet" href="lib/creative.css" type="text/css">

</head>

<body id="page-top">

	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand page-scroll" href="#page-top">Masim<span
					style="color: red">lab</span></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a class="page-scroll" href="#about">About</a></li>
					<li><a class="page-scroll" href="#services">Services</a></li>
					<li><a class="page-scroll active" href="#">Register</a></li>
					<li><a class="page-scroll" href="login.jsp">Login</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<header>
		<div class="header-content">
			<div class="header-content-inner">
				
				<form style="max-width: 330px; "class="form-signin" action="./Login" method="POST">
			<h1>Please sign in</h1>
			
			<hr>
				
			<label for="username" class="sr-only">Email address</label> 
			<input type="text" id="username" class="form-control" placeholder="Username" name="username" required autofocus> 
			
			<label for="password" class="sr-only">Password</label> 
			<input type="password" id="password" class="form-control" placeholder="Password" name="password" required>

			<div class="checkbox">
				<a href="register.jsp"> Don't have an account?</a>
			</div>
			
			<button class="btn btn-primary btn-xl page-scroll" type="submit">
				Sign in
			</button>
			
		</form>

				
			</div>
		</div>


		


	</header>



	<!-- jQuery -->
	<script src="lib/jquery2.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="lib/bootstrap/js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="lib/jquery.easing.min.js"></script>
	<script src="lib/jquery.fittext.js"></script>
	<script src="lib/wow.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="js/creative.js"></script>

</body>

</html>
