<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- For JSTL language -->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/styles.css" />

<link href="https://fonts.googleapis.com/css?family=Sansita"
	rel="stylesheet">

</head>

<body>
	<div class="container">
		<jsp:include page="_menu.jsp"></jsp:include>
		
		<div class="page-title">
			<h2>Lets Keep Kobe Healthy!</h2>
		</div>

		<div class="col-md-12">
			<div class="col-md-6">
				<img class="img-responsive" src="http://placehold.it/350x250">
			</div>
			<div class="col-md-6 pet-profile-div">
				<h3 id="pet-profile-h3">Pet Profile</h3>
				<ul id="pet-profile-list">
					<!-- Make these values come from the database-->
					<li class="pet-profile-list-items">Name: 	Kobe Gelsomino</li>
					<li class="pet-profile-list-items">Breed: 	Australian Shepherd / Border Collie</li>
					<li class="pet-profile-list-items">Color: 	Blue Merle</li>
					<li class="pet-profile-list-items">Weight: 	54lbs</li>
					<li class="pet-profile-list-items">Birthday: 3/14/2012</li>
				</ul>
			</div>
		</div>
		<div class="col-md-12">
			<h3>Test Table of Pets</h3>
		</div>
		<div class="col-md-12">
			<table border="1" width="100%">
				<tr>
					<th>Pet ID</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Age</th>
				</tr>
				<c:forEach var="row" items="${result.rows}">
					<tr>
						<td><c:out value="${row.id}" /></td>
						<td><c:out value="${row.first}" /></td>
						<td><c:out value="${row.last}" /></td>
						<td><c:out value="${row.age}" /></td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div class="col-md-12">
			<h3>Upcoming Appointments</h3>
		</div>
		<div class="col-md-12">
			<ul>
				<li>2/3/2017 - Check Up at Countryside Animal Hospital</li>
				<li>2/21/2017 - Haircut and Bath at Caroline's</li>
				<li>4/17/2017 - Doggy Day Camp at PetSmart all day</li>
			</ul>
		</div>
		<div class="col-md-12">
			<h3>Vaccines and Injection Expiration</h3>
		</div>
		<div class="col-md-12">
			<ul>
				<li>2 days till Expiration - 2/3/2017 Heart Worm (Monthly)</li>
				<li>5 days till Expiration - 2/7/2017 - Flea and Tick (Monthly)</li>
				<li>28 days till Expiration - Bordatella Vaccine - 3/3/2017
					(Yearly)</li>
			</ul>
		</div>
		</div>
		<jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>