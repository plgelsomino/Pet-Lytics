<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>

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
		<div class="col=md-12">
			<div class="page-title">
				<h2 class="col-md-12">WELCOME TO PET-LYTICS</h2>
				<h3>Lets keep track of all Fido's information, appointments,
					and spending.</h3>
			</div>

			<form name="loginForm" method="post" action="CheckLoginServlet">
				<form>
					<table border="0" id="login-table">
						<tr>
							<td class="login-table-labels">User Name</td>
							<td><input type="text" name="username"/></td>
							<input name="username" type="hidden" value=""/>
						</tr>
						<tr>
							<td class="login-table-labels">Password</td>
							<td><input type="password" name="password"/></td>
						</tr>
						<tr>
							<td>Remember Me</td>
							<td><input type="checkbox" name="rememberMe" value="Y" /></td>
						</tr>
					</table>
					<div class="col-md-12 login-btns">
						<div class="col-sm-6 col-md-6" id="btn-submit">
								<input class="btn btn-primary btn-md submit-btns" type="submit" value="Login" />

						</div>
						<div class="col-sm-6 col-md-6" id="btn-newuser">
							<a href="NewUserServlet" class="btn btn-info btn-md submit-btns"
								role="button">New User</a>
						</div>
					</div>
				</form>
		</div>

	</div>

	<jsp:include page="_footer.jsp"></jsp:include>

</body>
</html>