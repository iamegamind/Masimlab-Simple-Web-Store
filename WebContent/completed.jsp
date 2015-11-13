<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="app.users.*" import="app.tasks.*"
	import="java.util.*" import="javax.servlet.*"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


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
<body>

	<%
				int userID = (Integer) session.getAttribute("uid");
				session.setAttribute("uuid", userID);
				
				ArrayList<?> tasks = TaskList.getTasks(userID);
				session.setAttribute("tasks1", tasks);

			%>


	<div class="container">

<nav class="navbar navbar-default">
        <div class="container-fluid">
          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Home</a>
          </div>

          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

            <ul class="nav navbar-nav">
              <li><a href="welcome.jsp">Todo List <span class="sr-only">(current)</span></a></li>
              <li class="active"><a href="#">Completed List</a></li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
              <li><a href="./Logout">Logout</a></li>
              <li><a href="#"> ${currentUser.getFirstName()}  </a></li>
            </ul>

          </div>
        </div>
      </nav>



		<div class="jumbotron">

		

			<h1>Welcome ${currentUser.getFirstName()}</h1>

			<p>These are your completed tasks, you can permanently delete if you choose to</p>
		</div>

		<div>

			<table class="table table-hover" style="margin-top: 8%">
				<thead>
					<tr>
						<th>Task</th>
						<th>Priority</th>
						<th></th>
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${tasks1}" var="task">
						<c:if test="${task.isDone()}">
						<tr>
							<td>${task.taskName}</td>
							<td>${task.priority}</td>
							<td>
								<a class="btn btn-danger" href="./ManageTasks?Delete=true&TaskName=${task.taskName}">
									<span class="glyphicon glyphicon-trash"></span>
								</a>
							</td>
						</tr>
					</c:if>
					</c:forEach>
				</tbody>

			</table>
		</div>

	</div>

</body>
</html>