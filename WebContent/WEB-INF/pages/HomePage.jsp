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

<!--  Connecting to the DB -->
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/pets" user="root" password="mysql" />

<!--  select statement for Pet Profile values  -->
<sql:query dataSource="${snapshot}" var="result">
SELECT
	pets.PetName,
	pets.PetType,
	pets.PetBreed,
	pets.PetBirthDate,
	pets.PetWeight,
	pets.PetPurchaseTown,
	pets.PetColor
FROM pets
	LEFT JOIN PetOwner_has_Pets pohp
		ON pets.idPets = pohp.Pets_idPets
	LEFT JOIN PetOwner po
		ON pohp.PetOwner_idPetOwner = po.idPetOwner
ORDER BY pets.PetBirthDate DESC;
 <sql:param value="${sessionScope.username}" />
</sql:query>

<!--  select statement for next appointment values  -->
<sql:query dataSource="${snapshot}" var="next-appointment">
SELECT AppointmentDate, AppointmentStartTime, AppointmentDescription
FROM appointment
WHERE AppointmentDate >= CURDATE();
</sql:query>

<!--  select statement for previous 3 appointments  -->
<sql:query dataSource="${snapshot}" var="previous-appointments">
SELECT AppointmentDate, AppointmentStartTime, AppointmentDescription
FROM appointment
WHERE AppointmentDate <= CURDATE();
ORDER BY AppointmentDate DESC
LIMIT 3;
</sql:query>

<sql:query dataSource="${snapshot}" var="previous-treatments">
SELECT TreatmentDate, TreatmentDescription, TreatmentEndTime, TreatmentPrice
FROM treatement
ORDER BY TreatmentDate DESC
LIMIT 3;
</sql:query>

	<div class="container">
		<jsp:include page="_menu.jsp"></jsp:include>

		<div class="page-title">
			<h2>Lets Keep Kobe Healthy! <c:out value="" /></h2>
		</div>

		<div class="col-md-12">
			<div class="col-md-6">
				<img class="img-responsive" src="http://placehold.it/350x250">
			</div>
			<div class="col-md-6 pet-profile-div">
				<h3 id="pet-profile-h3">Pet Profile</h3>
				<ul id="pet-profile-list">
					<!-- Make these values come from the database-->
					<li class="pet-profile-list-items">Name: <c:out
							value="${result.PetName}" /></li>
					<li class="pet-profile-list-items">Breed: <c:out
							value="${result.PetBreed}" /></li>
					<li class="pet-profile-list-items">Color: <c:out
							value="${result.PetColor}" /></li>
					<li class="pet-profile-list-items">Weight: <c:out
							value="${result.PetWeight}" /></li>
					<li class="pet-profile-list-items">Birthday: <c:out
							value="${result.PetBirthDate}" /></li>
				</ul>
			</div>
		</div>
		<div class="col-md-6">
			<h3>Next Appointment</h3>
			<h4>
				<c:out value="${next-appointment.AppointmentDate}" />
				at
				<c:out value="${next-appointment.AppointmentStartTime}" />
				for
				<c:out value="${next-appointment.AppointmentDescription}" />
			</h4>
		</div>

		<div class="col-md-12 col-sm-12">
			<h3 class="col-md-12">Previous Appointments</h3>
			<table border="1" width="100%">
				<tr>
					<th>Appointment Date</th>
					<th>Appointment Start Time</th>
					<th>Appointment Description</th>
					<th>With Pet</th>
				</tr>
<%-- 				<c:forEach var="row" items="${previous-appointments.rows}"> --%>
					<tr>
						<td><c:out value="${row.AppointmentDate}" /></td>
						<td><c:out value="${row.AppointmentStartTime}" /></td>
						<td><c:out value="${row.AppointmentDescription}" /></td>
						<td><c:out value="${row.PetName}" /></td>
					</tr>
<%-- 				</c:forEach> --%>
			</table>
		</div>
		
		<div class="col-md-12 col-sm-12">
			<h3 class="col-md-12">Previous Treatments</h3>
			<table border="1" width="100%">
				<tr>
					<th>Date Given</th>
					<th>Description</th>
					<th>Price</th>
					<th>Expiration Date</th>
					<th>For Pet</th>
				</tr>
<%-- 				<c:forEach var="row" items="${previous-treatments.rows}"> --%>
					<tr>
						<td><c:out value="${row.TreatmentDate}" /></td>
						<td><c:out value="${row.TreatmentDescription}" /></td>
						<td><c:out value="${row.TreatmentPrice}" /></td>
						<td><c:out value="${row.TreatmentEndTime}" /></td>
						<td><c:out value="${row.PetName}" /></td>
					</tr>
<%-- 				</c:forEach> --%>
			</table>
		</div>

	</div>
	<jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>