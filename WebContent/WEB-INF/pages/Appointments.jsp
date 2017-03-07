<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

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

		<div class="col-md-12">
			<h2 id="appointments-h2">Appointments and Bills</h2>
		</div>

		<div class="col-md-12">
			<h3>All Appointments</h3>
		</div>
		<div class="col-md-12">

			<div class="col-md-12">
				<table border="1" width="100%">
					<tr>
						<th>Appointment Date</th>
						<th>Start Time</th>
						<th>End Time</th>
						<th>Vet Location</th>
						<th>Doctor Name</th>
						<th>Visit Title</th>
						<th>Visit Description</th>
						<th>Edit</th>
						<th>Delete</th>
						<th>View Bill</th>
					</tr>
					</tr>
					<c:forEach items="${appointmentList}" var="appointment">
					<tr>
						<td>${appointment.apptDate}</td>
						<td>${appointment.apptStartTime}</td>
						<td>${appointment.apptEndTime}</td>
						<td>${appointment.vetLocation}</td>
						<td>${appointment.doctorName}</td>
						<td>${appointment.visitTile}</td>
						<td>${appointment.visitDescription}</td>
						<td><a href="editAppointment?apptDate=${appointment.date}">Edit</a>
						</td>
						<td><a href="deleteAppointment?apptDate=${appointment.date}">Delete</a>
						</td>
						<td>${appointment.billLink}</td>
					</tr>
				</c:forEach>
				</table>
			</div>


		</div>
		<a href="createAppointment">Make Appointment</a>
	</div>
	<jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>