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
				<form method="POST" action="doNewUserLogin">
					<!--  Email -->
					<div class="form-group">
						<label class="new-user-labels" for="inputEmail">Enter
							Email Address</label> <input type="email" class="form-control"
							id="inputEmail" placeholder="Enter email" name="userName"
							value="${user.username}">
					</div>

					<!-- Password1 -->
					<div class="form-group">
						<label for="inputPassword1">Enter Password</label> <input
							type="password" class="form-control" id="inputPassword1"
							placeholder="Enter Password" name="password1"
							value="${user.password}">
					</div>
					<!-- Password2 -->
					<div class="form-group">
						<label for="inputPassword2">Enter Password Again</label> <input
							type="password" class="form-control" id="inputPassword2"
							placeholder="Enter Password" name="password2"
							value="${user.password}">
					</div>

					<!-- User First Name -->
					<div class="form-group">
						<label for="userFirstName">What is your first name?</label> <input
							type="text" class="form-control" id="userFirstName"
							placeholder="Enter Your first name" name="userFirstName"
							value="${user.firstName}">
					</div>

					<!-- User Last Name -->
					<div class="form-group">
						<label for="userLastName">What is your last name?</label> <input
							type="text" class="form-control" id="userLastName"
							placeholder="Enter Your last name" name="userLastName"
							value="${user.lastName}">
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

					<!-- Pets Name -->
					<div class="form-group">
						<label for="petName">What is your Pets name?</label> <input
							type="text" class="form-control" id="petName"
							placeholder="Enter your pets name" name="petName"
							value="${pet.petName}">
					</div>

					<!-- Pets Breed -->
					<div class="form-group">
						<label for="petBreed">What is the breed of your pet?</label> <input
							type="text" class="form-control" id="petBreed"
							placeholder="Enter your pet breed" name="petBreed"
							value="${pet.breed}">
					</div>

					<div class="form-group">
						<label for="typeOfPetSet">Where did you get your pet?</label> <select
							class="form-control" id="typeOfPetSet">
							<option value="1">Rescue/Shelter</option>
							<option value="2">Breeder</option>
							<option value="3">Pet Shop</option>
							<option value="4">Other</option>
						</select>
					</div>

					<!-- Pets Birthday -->
					<div class="form-group">
						<label for="petBirthday">What is your pets birthday?</label> <input
							type="text" class="form-control" id="petBirthday"
							placeholder="Enter your pets birthday" name="userLastName"
							value="${pet.birthday}">
					</div>

					<!-- Pets Birthday -->
					<div class="form-group">
						<label for="petColor">What color is your pet?</label> <input
							type="text" class="form-control" id="petColor"
							placeholder="Enter your pets color" name="petColor"
							value="${pet.color}">
					</div>
					<div class="new-user-buttons">
						<button class="btn btn-primary btn-md">
							<a href="home"></a>Submit
						</button>
						<button class="btn btn-danger btn-md">
							<a href="home"></a>Clear
						</button>
					</div>
			</div>

			<div class="col-md-6">
				<img class="img-responsive" src="http://placehold.it/400x400">
				<br> <img class="img-responsive"
					src="http://placehold.it/400x400">
			</div>
			</form>
		</div>
	</div>	<!-- Container end -->
	
			<jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>

<!--  			use to put small text under field -->
<!-- 					<small id="emailHelp" class="form-text text-muted">We'll never -->
<!-- 					share your email with anyone else.</small> -->
