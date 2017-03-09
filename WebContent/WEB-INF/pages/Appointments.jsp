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

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/pets" user="root" password="gels0207"/>

<!--  select statement for appointment values  -->
<sql:query dataSource="${snapshot}" var="appointmentQuery">
SELECT AppointmentDate, AppointmentStartTime, AppointmentEndTime, AppointmentDescription
FROM appointment
ORDER BY AppointmentDate DESC
</sql:query>

<!--  select statement for treatment values  -->
<sql:query dataSource="${snapshot}" var="treatmentQuery">
SELECT TreatmentDate, TreatmentStartTime, TreatmentEndTime, TreatmentDescription
FROM treatment
ORDER BY TreatmentDate DESC
</sql:query>

<!--  select statement for pets values  -->
<sql:query dataSource="${snapshot}" var="petsQuery">
SELECT PetName, PetType, PetBreed, PetBirthdate, PetPurchasePlace, PetPurchaseTown, PetWeight, PetColor
FROM pets
ORDER BY PetBirthDate DESC
</sql:query>


	<div class="container">
		<jsp:include page="_menu.jsp"></jsp:include>

		<div class="col-md-12">
			<h2 id="appointments-h2">Appointments, Treatments, Pets, and Vets</h2>
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
						<th>Visit Description</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
					</tr>
					<c:forEach items="${appointmentQuery}" var="appointment">
					<tr>
						<td>${appointment.apptDate}</td>
						<td>${appointment.apptStartTime}</td>
						<td>${appointment.apptEndTime}</td>
						<td>${appointment.visitDescription}</td>
						<td><a href="editAppointment?apptDate=${appointment.date}">Edit</a>
						</td>
						<td><a href="deleteAppointment?apptDate=${appointment.date}">Delete</a>
						</td>
					</tr>
				</c:forEach>
				</table>
			</div>
			
			<div class="col-md-12">
			<button class="addButtons" data-toggle="collapse" data-target="#appointment">Add Appointment</button>
				<div id="appointment" class="collapse">
				<form method="POST" action="doAddAppointment">
					
					<div class="col-sm-4 form-group">
						<label class="new-appointment-labels" for="inputAppointmentDate">Enter Date of Appointment</label> 
						<input type="text" class="form-control"
							id="appointmentDate" placeholder="Enter email" name="appointmentDate"
							value="${appointment.AppointmentDate}">
					</div>
					
					<div class="col-sm-4 form-group">
						<label class="new-appointment-labels" for="inputAppointmentStartTime">Enter Start Time</label> 
						<input type="text" class="form-control"
							id="appointmentStartTime" placeholder="Enter Start Time" name="appointmentStartTime"
							value="${appointment.AppointmentStartTime}">
					</div>
					
					<div class="col-sm-4 form-group">
						<label class="new-appointment-labels" for="inputAppointmentStartTime">Enter End Time</label> 
						<input type="text" class="form-control"
							id="appointmentEndTime" placeholder="Enter End Time" name="appointmentEndTime"
							value="${appointment.AppointmentEndTime}">
					</div>
					
					<div class="col-md-12 form-group">
						<label class="new-appointment-labels" for="inputAppointmentDescription">Enter Appointment Description</label> 
						<input type="text" class="form-control"
							id="appointmentDescription" placeholder="Enter Description" name="appointmentDescription"
							value="${appointment.AppointmentDescription}">
					</div>
				
					<div class="col-md-12">
						<button class="btn btn-primary btn-md new-appointment-buttons">
							<a href="#"></a>Submit
						</button>
					</div>
			</form>
		</div>
		</div>
		</div>

<!-- ***************************************************** -->

		<div class="col-md-12">
			<h3>All Treatments</h3>
		</div>
		<div class="col-md-12">

			<div class="col-md-12">
				<table border="1" width="100%">
					<tr>
						<th>Date Given</th>
						<th>Expiration</th>
						<th>Cost</th>
						<th>Description</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
					</tr>
					<c:forEach items="${treatmentQuery}" var="treatment">
					<tr>
						<td>${treatment.TreatmentDate}</td>
						<td>${treatment.TreatmentEndTime}</td>
						<td>${treatment.TreatmentCost}</td>
						<td>${treatment.TreatmentDescription}</td>
						<td><a href="editAppointment?apptDate=${treatment.date}">Edit</a>
						</td>
						<td><a href="deleteAppointment?apptDate=${treatment.date}">Delete</a>
						</td>
					</tr>
				</c:forEach>
				</table>
			</div>
			
			<div class="col-md-12">
			<button class="addButtons" data-toggle="collapse" data-target="#treatment">Add Treatment</button>
				<div id="treatment" class="collapse">
				<form method="POST" action="doAddTreatment">
					
					<div class="col-sm-4 form-group">
						<label class="new-appointment-labels" for="inputTreatmentDate">Treatment Date</label> 
						<input type="text" class="form-control"
							id="treatmentDate" placeholder="Pick Date" name="treatmentDate"
							value="${treatment.TreatmentDate}">
					</div>
					
					<div class="col-sm-4 form-group">
						<label class="new-appointment-labels" for="inputTreatmentEndTime">Treatment Expiration Date</label> 
						<input type="text" class="form-control"
							id="treatmentEndTime" placeholder="Select Expiration Date" name="treatmentEndTime"
							value="${treatment.TreatmentEndTime}">
					</div>
					
					<div class="col-sm-4 form-group">
						<label class="new-appointment-labels" for="inputTreatmentCost">Enter Treatment Cost</label> 
						<input type="text" class="form-control"
							id="treatmentCost" placeholder="Enter Treatment Cost" name="treatmentCost"
							value="${treatment.TreatmentCost}">
					</div>
					
					<div class="col-md-12 form-group">
						<label class="new-appointment-labels" for="inputTreatmentDescription">Enter Treatment Description</label> 
						<input type="text" class="form-control"
							id="treatmentDescription" placeholder="Enter Description" name="treatmentDescription"
							value="${treatment.TreatmentDescription}">
					</div>
				
					<div class="col-md-12">
						<button class="btn btn-primary btn-md new-appointment-buttons">
							<a href="#"></a>Submit
						</button>
					</div>
			</form>
		</div>
		</div>
		</div>
		
		<!-- ***************************************************** -->

		<div class="col-md-12">
			<h3>All Pets</h3>
		</div>
		<div class="col-md-12">

			<div class="col-md-12">
				<table border="1" width="100%">
					<tr>
						<th>Name</th>
						<th>Type</th>
						<th>Breed</th>
						<th>Birthday</th>
						<th>Purchase Place</th>
						<th>Purchase Town</th>
						<th>Weight</th>
						<th>Color</th>
					</tr>
					</tr>
					<c:forEach items="${petsQuery}" var="pets">
					<tr>
						<td>${pets.PetName}</td>
						<td>${pets.PetName}</td>
						<td>${pets.PetName}</td>
						<td>${pets.PetName}</td>
						<td>${pets.PetName}</td>
						<td>${pets.PetName}</td>
						<td><a href="editAppointment?apptDate=${pets.date}">Edit</a>
						</td>
						<td><a href="deleteAppointment?apptDate=${pets.date}">Delete</a>
						</td>
					</tr>
				</c:forEach>
				</table>
			</div>
			
			<div class="col-md-12">
			<button class="addButtons" data-toggle="collapse" data-target="#pets">Add Pets</button>
				<div id="pets" class="collapse">
				<form method="POST" action="doAddPets">
					
					<div class="col-sm-4 form-group">
						<label class="new-appointment-labels" for="inputPetName">Name</label> 
						<input type="text" class="form-control"
							id="petName" placeholder="Enter Pet Name" name="petName"
							value="${pets.PetName}">
					</div>
					
					<div class="col-sm-4 form-group">
						<label class="new-appointment-labels" for="inputPetType">Type</label> 
						<input type="text" class="form-control"
							id="petType" placeholder="Enter Pet Type" name="petType"
							value="${pets.PetType}">
					</div>
					
					<div class="col-sm-4 form-group">
						<label class="new-appointment-labels" for="inputPetBreed">Breed</label> 
						<input type="text" class="form-control"
							id="petBreed" placeholder="Enter Pet Breed" name="petBreed"
							value="${pets.PetBreed}">
					</div>
					
					<div class="col-sm-4 form-group">
						<label class="new-appointment-labels" for="inputPetBirthDate">Birthday</label> 
						<input type="text" class="form-control"
							id="petBirthdate" placeholder="Enter Birthday" name="petBirthDate"
							value="${pets.PetBirthDate}">
					</div>
					
					<div class="col-sm-4 form-group">
						<label class="new-appointment-labels" for="inputPetPurchasePlace">Purchase Place</label> 
						<input type="text" class="form-control"
							id="petPurchasePlace" placeholder="Enter Purchase Place" name="petPurchasePlace"
							value="${pets.PetPurchasePlace}">
					</div>
					
					<div class="col-sm-4 form-group">
						<label class="new-appointment-labels" for="inputPetPurchaseTown">Purchase Town</label> 
						<input type="text" class="form-control"
							id="petPurchaseTown" placeholder="Enter Purchase Town" name="petPurchaseTown"
							value="${pets.PetPurchaseTown}">
					</div>
					
					<div class="col-sm-4 form-group">
						<label class="new-appointment-labels" for="inputPetPurchaseDate">Purchase Date</label> 
						<input type="text" class="form-control"
							id="petName" placeholder="Select Purchase Date" name="petPurchaseDate"
							value="${pets.PetPurchaseDate}">
					</div>
					
					<div class="col-sm-4 form-group">
						<label class="new-appointment-labels" for="inputPetWeight">Pet Weight</label> 
						<input type="text" class="form-control"
							id="petWeight" placeholder="Enter Pet Weight" name="petWeight"
							value="${pets.PetWeight}">
					</div>
					
					<div class="col-sm-4 form-group">
						<label class="new-appointment-labels" for="inputPetColor">Pet Color</label> 
						<input type="text" class="form-control"
							id="petColor" placeholder="Enter Pet Color" name="petColor"
							value="${pets.PetColor}">
					</div>
				
				
					<div class="col-md-12">
						<button class="btn btn-primary btn-md new-appointment-buttons">
							<a href="#"></a>Submit
						</button>
					</div>
			</form>
		</div>
		</div>
		</div>


	</div>
	<jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>