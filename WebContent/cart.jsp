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

	double total = 0;

	for (Product pr : carty) {
		total += pr.getPrice();
	}

	session.setAttribute("cartTotal", total);
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
					<li><a href="welcome.jsp">Buy</a></li>
					<li class="active"><a href="#">Cart <span
							class="glyphicon glyphicon-shopping-cart"></span> <span
							style="background-color: #5CB85C" class="badge">${cartS}</span></a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="./Logout"> Logout </a></li>
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
			<div class="col-md-9">
				<h1>
					<span class="glyphicon glyphicon-shopping-cart"></span> Cart
				</h1>

				<c:choose>
					<c:when test="${cartS < 1}">
						<p class="lead">${currentUser.getFirstName()}, Your cart is empty. Come on, <a href="./welcome.jsp">Get shopping</a></p>
					</c:when>
					<c:when test="${cartS > 0}">
						<p class="lead">${currentUser.getFirstName()},The following items
							are in your cart</p>
					</c:when>

				</c:choose>

	<hr/>

			</div>

			<div class="col-md-3"
				style="border: 1px solid #ddd;
	border-radius: 3px">
				<h3 style="margin-top: 10px">Check Out</h3>

				<p>
					<fmt:setLocale value="en_ZA" />

					<span class="lead" style="font-size: 16px;
	color: #8c8c8c">Total:
					</span> <span class="lead" style="font-size: 16px"> <fmt:formatNumber
							value="${cartTotal}" type="currency" />
					</span>
				</p>
				<p>
					<a data-toggle="modal" href="#myLargeModal" class="btn btn-success">Checkout</a>
				</p>

			</div>

		</div>

		<div class=row>
			<c:forEach items="${userCart}" var="product">

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
						</ul>

						<div class="panel-footer">
							<a
								href="./ManageProducts?RemoveFromCart=true&ProductName=${product.name}"
								class="btn btn-danger btn-xs"> <span
								class="glyphicon glyphicon-trash"></span>
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


	<div class="modal fade bs-example-modal-lg" id="myLargeModal"
		tabindex="-1" role="dialog" aria-labelledby="myLargeModal">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">

				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Your order summary</h4>
				</div>

				<div class="modal-body">
					<table class="table table-hover">

						<col width="30%">
						<col width="50%">
						<col width="20%">
						<col width="10%">
						<thead>
							<tr>
								<th></th>
								<th>Item Name</th>
								<th>Cost</th>
								<th></th>
							</tr>
						</thead>

						<tbody>
							<c:forEach items="${userCart}" var="product">
								<tr>
									<td><img style="max-width: 10%;
	height: auto;"
										src="images/products/thumbs/${product.imagePath}"
										alt="${product.name}" class="img-rounded"></td>
									<td>${product.name}</td>
									<fmt:setLocale value="en_ZA" />
									<td><fmt:formatNumber value="${product.price}"
											type="currency" /></td>
									<td>
									<td><a
										href="./ManageProducts?RemoveFromCart=true&ProductName=${product.name}"
										class="btn btn-danger btn-xs"> <span
											class="glyphicon glyphicon-trash"></span>
									</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>

				<div class="modal-footer">

					<a class="btn btn-danger" href="./welcome.jsp">Continue
						Shopping</a> <a class="btn btn-success"
						href="./ManageProducts?Checkout=true&total=${cartTotal}">Purchase</a>

				</div>

			</div>
		</div>
	</div>



</body>
</html>