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
					<li class="active"><a href="#">Buy</a></li>
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
			<h1>
				<span class="glyphicon glyphicon-tags"></span> Order
			</h1>
			<p class="lead">Purchase prints below</p>
			<hr />
		</div>

		<div class=row>
			<c:forEach items="${products1}" var="product">

				<div class="col-lg-3 col-sm-4 col-xs-6">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">${product.name}</h3>
						</div>
						<div class="panel-body">
							<img src="images/products/thumbs/${product.imagePath}"
								class="img-responsive" />
						</div>

						<ul class="list-group">
							<li class="list-group-item"
								style="font-style: italic;
	font-size: 9px">By
								${product.artist}</li>
							<li class="list-group-item"><a class="btn btn-danger btn-xs"
								href="./ManageProducts?LikeProduct=true&ProductName=${product.name}">
									<span class="glyphicon glyphicon-heart"></span>
							</a> <span class="badge">${product.likes} Likes</span></li>
						</ul>

						<div class="panel-footer">
							<a
								href="./ManageProducts?AddToCart=true&ProductName=${product.name}"
								class="btn btn-success btn-xs"> <span
								class="glyphicon glyphicon-shopping-cart"></span> Add to cart
							</a>
							<fmt:setLocale value="en_ZA" />
							<span class="lead pull-right" style="font-size: 12px;"><fmt:formatNumber
									value="${product.price}" type="currency" /></span>
						</div>
					</div>
				</div>

			</c:forEach>
		</div>

	</div>




</body>
</html>