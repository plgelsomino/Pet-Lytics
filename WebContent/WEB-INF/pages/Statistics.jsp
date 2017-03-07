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
			<h2>Statistics</h2>
		</div>

		<div class="col-md-12">
			<h3>Table of Pets</h3>
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
			<h3>Appointments</h3>
		</div>
		<div class="col-md-12">
			<ul>
				<li>2/3/2017 - Check Up at Countryside Animal Hospital</li>
				<li>2/21/2017 - Haircut and Bath at Caroline's</li>
				<li>4/17/2017 - Doggy Day Camp at PetSmart</li>
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
		
		<div class="col-md-12">
			<h3>Bills</h3>
		</div>
		<div class="col-md-12">
			<table border="1" width="100%">
				<tr>
					<th>Bill #</th>
					<th>Date</th>
					<th>Total Treatments</th>
					<th>Total Cost</th>
					<th>Total Cost</th>
				</tr>
				<c:forEach var="row" items="${result.rows}">
					<tr>
						<td><c:out value="${row.billNum}" /></td>
						<td><c:out value="${row.date}" /></td>
						<td><c:out value="${row.treatmentNum}" /></td>
						<td><c:out value="${row.total}" /></td>
						<td>${appointment.billLink}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		
		<div class="col-md-12">
			<h3>Treatments</h3>
		</div>
		<div class="col-md-12">
			<table border="1" width="100%">
				<tr>
					<th>Treatment Name</th>
					<th>Treatment Date</th>
					<th>Treatment Cost</th>
				</tr>
				<c:forEach var="row" items="${result.rows}">
					<tr>
						<td><c:out value="${row.treatmentName}" /></td>
						<td><c:out value="${row.treatmentDate}" /></td>
						<td><c:out value="${row.treatmentCost}" /></td>
					</tr>
				</c:forEach>
			</table>
		</div>

		
		
		
		</div>
		<jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>