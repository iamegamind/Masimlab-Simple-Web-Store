<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Register</title>

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
				
				<form class="form-signin" action="./Register" method="POST">

			<h2 class="form-signin-heading">Please fill in your details</h2>

			<div class="form-group">
				<label for="firstName" class="sr-only">Email address</label> <input
					type="text" id="firstName" class="form-control"
					placeholder="First Name" name="firstName" required autofocus>
			</div>
			<div class="form-group">

				<label for="lastName" class="sr-only">Email address</label> <input
					type="text" id="lastName" class="form-control"
					placeholder="Last Name" name="lastName" required>
			</div>
			<div class="form-group">

				<label for="username" class="sr-only">Email address</label> <input
					type="text" id="username" class="form-control"
					placeholder="Username" name="username" required>
			</div>
			<div class="form-group">

				<label for="password" class="sr-only">Password</label> <input
					type="password" id="password" class="form-control"
					placeholder="Password" name="password" required>
			</div>
			<div class="form-group">

				<div class="checkbox">
					<a href="login.jsp"> Already have an account?</a>
				</div>
			</div>
			<button class="btn btn-lg btn-primary btn-block" type="submit">
				Register</button>

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
