<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="_header.jsp"></jsp:include>

	<h3>Add an Appointment</h3>

	<form method="POST" action="addAppointment">
		<table border="0">
			<tr>
				<p>
					<label>What type of appointment do you want to add?</label> <select
						id="appointmentTypeList">
						<option value="1">Vet</option>
						<option value="2">Haircut/Bath</option>
						<option value="3">Pet Hotel</option>
					</select>
				</p>
			</tr>
			<tr>
				<!-- Make a schedule picker? -->
				<td>What is the appointment date? Example - (01/12/2017)</td>
				<td><input type="text" name="appointmentDate" value="" /></td>
			</tr>
			<tr>
				<!-- Make a time picker? -->
				<td>What time does appointment start?</td>
				<td><input type="text" name="appointmentStart" value="" /></td>
			</tr>
			<tr>
				<!-- Make a time picker? -->
				<td>What time does appointment end?</td>
				<td><input type="text" name="appointmentEnd" value="" /></td>
			</tr>
			<tr>
				<td>Where is your appointment?</td>
				<td><input type="text" name="appointmentLocation" value="" /></td>
			</tr>
			<tr>
				<td>Add a title for your appointment?</td>
				<td><input type="text" name="appointmentTitle" value="" /></td>
			</tr>
			<tr>
				<td>Add a description for your appointment</td>
				<td><input type="text" name="appointmentDesc" value="" /></td>
			</tr>
			
			<!-- If date is before date on computer AND user selected vet, give user option to add treatments jsp if it was a vet appointment -->
		
			<jsp:include page="_addTreatments.jsp"></jsp:include>
		
		</table>
	</form>

	<a href="home"><input type="submit" value="Submit" /></a>
	<a href="home"><input type="submit" value="Clear" /></a>

	<jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>