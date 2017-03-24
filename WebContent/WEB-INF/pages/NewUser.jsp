<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New User</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/styles.css" />

<link href="https://fonts.googleapis.com/css?family=Sansita"
	rel="stylesheet">
	
<script
  src="https://code.jquery.com/jquery-3.2.0.js"
  integrity="sha256-wPFJNIFlVY49B+CuAIrDr932XSb6Jk3J1M22M3E2ylQ="
  crossorigin="anonymous"></script>
  	
<script type="text/javascript" src="${pageContext.request.contextPath}/WEB-INF/js/javascript.js"></script>

</head>
<body>
	<div class="container">
		<div class="col-md-12">
			<h2 id="new-user-h2">Your pet is already thanking You for
				keeping all his information safe.</h2>
		</div>

		<div class="col-md-12">
			<h3 id="new-user-h3">Just a few quick questions to get started</h3>
		</div>

		<div id="new-user-entire-form">
			<div class="col-md-6">
				<form name="newUserForm" method="post" action="doNewUserServlet">
					<!--  Email -->
					<div class="form-group">
						<label class="new-user-labels" for="inputEmail">Enter
							Email Address</label> 
						<input type="email" class="form-control" id="inputEmail" placeholder="Enter email" name="userName">
					</div>

					<!-- Username -->
					<div class="form-group">
						<label for="inputUsername">Enter Username</label> <input
							type="text" class="form-control" id="inputUsername"
							placeholder="Enter Username" name="inputUsername">
					</div>

					<!-- Password -->
					<div class="form-group">
						<label for="inputPassword1">Enter Password</label> <input
							type="password" class="form-control" id="inputPassword1"
							placeholder="Enter Password" name="password1">
					</div>
					
<!-- 					User First Name -->
<!-- 					<div class="form-group"> -->
<!-- 						<label for="userFirstName">What is your first name?</label> <input -->
<!-- 							type="text" class="form-control" id="userFirstName" -->
<!-- 							placeholder="Enter Your first name" name="userFirstName" -->
<%-- 							value="${user.firstName}"> --%>
<!-- 					</div> -->

<!-- 					User Last Name -->
<!-- 					<div class="form-group"> -->
<!-- 						<label for="userLastName">What is your last name?</label> <input -->
<!-- 							type="text" class="form-control" id="userLastName" -->
<!-- 							placeholder="Enter Your last name" name="userLastName" -->
<%-- 							value="${user.lastName}"> --%>
<!-- 					</div> -->

					<!-- Pets Name -->
					<div class="form-group">
						<label for="petName">What is your Pets name?</label> <input
							type="text" class="form-control" id="petName"
							placeholder="Enter your pets name" name="petName">
					</div>
					
					<div class="form-group">
						<label for="typeOfPetSet">What type of pet do you have?</label> <select
							class="form-control" id="typeOfPetSet">
							<option>Dog</option>
							<option>Cat</option>
							<option>Bird</option>
							<option>Bunny</option>
						</select>
					</div>

					<!-- Pets Breed -->
					<div class="form-group">
						<label for="petBreed">What is the breed of your pet?</label> <input
							type="text" class="form-control" id="petBreed"
							placeholder="Enter your pet breed" name="petBreed">
					</div>

					<!-- Pets Birthday -->
					<div class="form-group">
						<label for="petBirthDate">What is your pets birthday?</label> <input
							type="text" class="form-control" id="petBirthDate"
							placeholder="Enter your pets birthday" name="petBirthDate">
					</div>

					<!-- Pet Purchase Place -->
					<div class="form-group">
						<label for="petPurchasePlace">Where did you get your pet?</label> <input
							type="text" class="form-control" id="petPurchasePlace"
							placeholder="Enter where you bought your pet" name="petPurchasePlace">
					</div>

					<!-- Pet Purchase Town -->
					<div class="form-group">
						<label for="petPurchaseTown">What town did your get your pet in?</label> <input
							type="text" class="form-control" id="petPurchaseTown"
							placeholder="Enter the town you bought your pet in" name="petPurchaseTown">
					</div>
					
					<!-- Pets Purchase Date -->
					<div class="form-group">
						<label for="petPurchaseDate">What date did you buy your pet?</label> <input
							type="text" class="form-control" id="petPurchaseDate"
							placeholder="Enter your pet purchase date" name="petPurchaseDate">
					</div>
					
					<!-- Pet Weight -->
					<div class="form-group">
						<label for="petWeight">How heavy is your pet in lbs?</label> <input
							type="text" class="form-control" id="petWeight"
							placeholder="Enter your pets weight" name="petWeight">
					</div>

					<!-- Pets Color -->
					<div class="form-group">
						<label for="petColor">What color is your pet?</label> <input
							type="text" class="form-control" id="petColor"
							placeholder="Enter your pets color" name="petColor">
					</div>
					<div class="new-user-buttons">
						<button class="btn btn-primary btn-md">
							<input type="submit" value="Submit" />
						</button>
						<button class="btn btn-danger btn-md">
							<a href="home"></a>Clear
						</button>
					</div>
				</form>
			</div>

			<div class="col-md-6">
				<img class="img-responsive" src="http://placehold.it/400x400">
				<br> <img class="img-responsive"
					src="http://placehold.it/400x400">
			</div>

		</div>
	</div>	<!-- Container end -->
	
			<jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>

<!--  			use to put small text under field -->
<!-- 					<small id="emailHelp" class="form-text text-muted">We'll never -->
<!-- 					share your email with anyone else.</small> -->
