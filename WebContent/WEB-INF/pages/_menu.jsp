<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%--    pageEncoding="UTF-8"%> --%>

<!-- <div style="padding: 5px;"> -->

<!DOCTYPE html>
<html lang="en">
<head>
<title>Navbar</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/styles.css" />

<link href="https://fonts.googleapis.com/css?family=Sansita"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Pet-Lytics</a>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<li class="active"><a href="home">Home</a></li>
						<li><a href="AppointmentServlet">Add New</a></li>
						<li><a href="StatisticsServlet">Statistics</a></li>
						<li><a href="#">Friends</a></li>
					</ul>
					<form name="logoutBtn" method="post" action="Logout">
						<li><a id="logoutForm"><span id="logout" class="glyphicon glyphicon-log-in"></span><input id="logoutBtn" type="submit" value="Logout" /></a></li>
					</form>
				</div>
			</div>
		</div>
	</nav>
</body>
</html>

<!--         IF I WANT DROP DOWN ITEM USE CODE BELOW -->
<!--         <li class="dropdown"> -->
<!--           <a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a> -->
<!--           <ul class="dropdown-menu"> -->
<%--             <li><a href="${pageContext.request.contextPath}/">Home</a></li> --%>
<%--             <li><a href="${pageContext.request.contextPath}/addNewPet">View Appointments</a></li> --%>
<%--             <li><a href="${pageContext.request.contextPath}/addNewPet">Add New Pet</a></li> --%>
<%--             <li><a href="${pageContext.request.contextPath}/viewBills">View Bills</a></li> --%>
<!--           </ul> -->
<!--         </li> -->
