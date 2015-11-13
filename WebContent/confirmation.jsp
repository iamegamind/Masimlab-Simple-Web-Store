<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="app.users.*" import="app.tasks.*"
	import="java.util.*" import="javax.servlet.*" import="app.products.*"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>


<script src="lib/jquery2.js" type="text/javascript"></script>
<script type="text/javascript" src=lib/bootstrap/js/bootstrap.min.js></script>
<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="lib/login.css" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome</title>
</head>

<%

	int userID = 0;
	try {
		userID = (Integer) session.getAttribute("uid");
	}
	catch (Exception e) {

	}
	session.setAttribute("uuid", userID);

	ArrayList<Product> products = ProductsList.getProducts();
	session.setAttribute("products1", products);

	ArrayList<Product> carty = (ArrayList<Product>) session
			.getAttribute("userCart");
	int cartSize = carty.size();
	session.setAttribute("cartS", cartSize);
%>

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
					<li><a href="./weolcome.jsp">Buy</a></li>
					<li><a href="./cart.jsp">Cart <span
							class="glyphicon glyphicon-shopping-cart"></span> <span
							style="background-color: #5CB85C" class="badge">${cartS}</span></a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="./ManageProducts?Logout=true"> Logout </a></li>
					<li><a href="#"> ${currentUser.getFirstName()} </a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">

		<div class="row"
			style="margin-top: 5%;
	margin-bottom: 7%;
	border-bottom: 1px solid #d8d8d8;">
			<h1 style="font-size: 45px">
				Purchase Successful 
			</h1>
		</div>

		<div class=row>
			<h1>Congratulations ${currentUser.firstName}, your order has been dispatched...</h1>
			
			<p class="lead">Your order will be delivered to: </p>
			<p>${currentUser.address}</p>
			
			<p>
				<a class="btn btn-success" href="./welcome.jsp">
					Get back to shopping
				</a>
			</p>
		</div>

	</div>

</body>
</html>