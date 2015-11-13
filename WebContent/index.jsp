<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<link rel="icon" href="../../favicon.ico">

<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

<link href="lib/slider/css/normalize.css" rel="stylesheet">
<link href="lib/slider/css/app.css" rel="stylesheet">

<style>
body {
	padding-top: 10px;
	color:black;
}

header{
	color:white;
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

#main-slider .slide-1 {
	background-image: url("images/fpslide1.jpg");
}

#main-slider .slide-2 {
	background-image: url("images/fpslide2.jpg");
}

#main-slider .slide-3 {
	background-image: url("images/fpslide3.jpg");
}

a {
	color: #337ab7;
}

a:hover {
	color: #23527c;
}
</style>


<title>The Lab!!</title>

</head>

<body>

	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Masim<span style="color: red">lab</span></a>
			</div>

			<div id="navbar" class="navbar-collapse collapse">

				<ul class="nav navbar-nav">
					<li><a href="info.jsp">More info</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="login.jsp"> Log In </a></li>
					<li><a href="register.jsp"> Sign Up </a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div id="main-slider">
		<div class="slide slide-1">
			<div class="container">
				<div class="vertical-hook"></div>
				<div class="vertical-container">
					<header>
						<h1>Purchase Prints Online</h1>
						<p>
							<a href="register.jsp" class="btn btn-default">Join Us Today</a>
						</p>
					</header>
				</div>
			</div>
		</div>
		<div class="slide slide-2">
			<div class="container">
				<div class="vertical-hook"></div>
				<div class="vertical-container">
					<header>
						<h1>High Quality Prints</h1>
						<p>
							<a href="info.jsp" class="btn btn-default">More Info</a>
						</p>
					</header>
				</div>
			</div>
		</div>
		<div class="slide slide-3">
			<div class="container">
				<div class="vertical-hook"></div>
				<div class="vertical-container">
					<header>
						<h1>Start Purchasing Now</h1>
						<p>
							<a href="login.jsp" class="btn btn-default">Sign In</a>
						</p>
					</header>
				</div>
			</div>
		</div>
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
	<script type="text/javascript" src="lib/slider/js/slider.js"></script>
	<script type="text/javascript" src="lib/slider/js/app.js"></script>

	<script type="text/javascript">
		
	</script>
</body>

</html>
