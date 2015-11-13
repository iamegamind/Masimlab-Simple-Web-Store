<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from getbootstrap.com/examples/carousel/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 17 Jun 2015 03:50:14 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<!-- /Added by HTTrack -->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<style>
body {
	padding-top: 70px;
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

.lead {
	margin-bottom: 20px;
	font-size: 16px;
	font-weight: 300;
	line-height: 1.4
}
</style>


<title>The Lab!!</title>

<!-- Bootstrap core CSS -->
<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

<link href="lib/carousel.css" rel="stylesheet">
</head>
<!-- NAVBAR
================================================== -->
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
				<a class="navbar-brand" href="index.jsp">Masim<span
					style="color: red">lab</span></a>
			</div>

			<div id="navbar" class="navbar-collapse collapse">

				<ul class="nav navbar-nav">
					<li class="active"><a href="#">More info</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="login.jsp"> Log In </a></li>
					<li><a href="register.jsp"> Sign Up </a></li>
				</ul>

			</div>

		</div>
	</nav>



	<!-- Marketing messaging and featurettes
    ================================================== -->
	<!-- Wrap the rest of the page in another container to center all the content. -->

	<div class="container marketing">

		<h1 class="featurette-heading"
			style="margin-top: 0px;
	margin-bottom: 0px">
			Why join Masim<span style="color: red">lab</span> ?
		</h1>
		<hr class="featurette-divider" style="margin: 20px 0;">

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">
					Purchase premium prints. <span class="text-muted">They'll
						blow your mind.</span>
				</h2>
				<p class="lead">Highest quality premium prints on only the best
					medium. Choose from a wide range of paper and quality cotton
					canvas... An overwhelming array of choice is available at your
					convenience.</p>
			</div>
			<div class="col-md-5">
				<img class="featurette-image img-responsive center-block"
					src="images/info/info1.jpg" alt="Generic placeholder image">
			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7 col-md-push-5">
				<h2 class="featurette-heading">
					Yeah, they're that good. <span class="text-muted">See for
						yourself.</span>
				</h2>
				<p class="lead">A combination of exceptional compositional
					detail and world-class printing technologies results in
					collector-worthy art.</p>
			</div>
			<div class="col-md-5 col-md-pull-7">
				<img class="featurette-image img-responsive center-block"
					src="images/info/info2.jpg" alt="Generic placeholder image">
			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">
					World class artists.<span class="text-muted">Checkmate.</span>
				</h2>
				<p class="lead">Experience the greatest - The uncanny eye of
					Ansel Adams, the uncompete-with-able craft of Henri
					Cartier-Bresson, the intricate eye of Diane Arbus and many more-
					right in your living room.</p>
			</div>
			<div class="col-md-5">
				<img class="featurette-image img-responsive center-block"
					src="images/info/info3.jpg" alt="Generic placeholder image">
			</div>
		</div>

		<hr class="featurette-divider">

		<!-- /END THE FEATURETTES -->


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





	<script type="text/javascript" src="lib/jquery2.js"></script>
	<script type="text/javascript" src=lib/bootstrap/js/bootstrap.min.js></script>

</body>

</html>
