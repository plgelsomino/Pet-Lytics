<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="POST" action="addTreatments">
			<table border="0">
				<tr>
						<p>
							<label>Select Treatment</label> <select id="treatmentList">
								<option value="1">Checkup</option>
								<option value="2">Bordatella</option>
								<option value="3">Rabies Vaccine</option>
								<option value="4">Nudering</option>
								<option value="4">Add New</option>
							</select>
						</p>
				</tr>
				<tr>
					<td>What was the cost of treatment? Without Tax</td>
					<td><input type="text" name="password" value="" /></td>
				</tr>
				<tr>
					<td>Any Medications Purchased?</td>
					<td><input type="checkbox" name="medicationsPurchased" value="" /></td>
				</tr>
			    <!-- If medications are purchased show options to add from select list -->
				<tr>
						<p>
							<label>Select Medication</label> <select id="treatmentList">
								<option value="1">Flea and Tick Preventative</option>
								<option value="2">Chewables for Teeth Cleaning</option>
								<option value="3">Heart Worm Pills</option>
								<option value="4">Add New</option>
							</select>
						</p>
				</tr>
				<tr>
					<td>What was the cost of Medicaition? Without Tax</td>
					<td><input type="text" name="medicationCost" value="" /></td>
				</tr>
				
			</table>
		</form>
		
		<a href=""><input type="submit" value="Submit" /></a>
		<a href=""><input type="submit" value="Cancel" /></a>
</body>
</html>