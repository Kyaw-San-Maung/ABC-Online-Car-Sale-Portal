<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<!--  Enable Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<link rel="stylesheet" href="./style.css">


<!--  Access the Static Resources without using spring URL -->
<link href="/css/style.css" rel="stylesheet" />
<script src="/js/custom.js"></script>
<style type="text/css">
.fw-bold {
	font-weight: 800;
}

.fs-5 {
	font-size: 15px;
}

.registerContainer {
	margin-top: 80px;
	margin-right: 120px;
	margin-left: 120px;
}

.bg-1 {
	border: 1px solid black;
	border-radius: 20px;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: right top;
	overflow: hidden;
	padding: 50px;
	margin-top: 50px;
	margin-bottom: 50px;
	margin-right:120px;
	margin-left:120px;
	height: 100%;
}

.bg_5 {
	text-align: left;
}

.btnForRegister {
	width: 100%;
	padding: 10px
}

.registerTextControl {
	text-align: center;
	margin: auto;
	margin-bottom: 20px;
}

.form-group {
	margin-bottom: 25px;
}
</style>

</head>

<body>


	<%@ include file="header.jsp"%>

	<div class="registerContainer">

		<!-- First Container -->
		<div class="container_5 bg-1 ">
			<div class="registerTextControl">
				<h1 class="text-center" style="color: #286090; font-weight: 800;">Register
					Here!</h1>
			</div>

			<div class="row">
				<div class="col-md-12 text-center bg_5">


					<c:if test="${register_success != null}">
						<div class="alert alert-success">
							<p>${register_success}
								Click <a href="cus_login_page"> Sign In</a> to use our portal...
							</p>
						</div>
					</c:if>

					<form:form action="save" method="post" modelAttribute="user">
						<div class="form-group">
							<label for="username">Your Full Name:</label>
							<form:input path="name" class="form-control" required="true" />
						</div>

						<div class="form-group">
							<label for="username">Your Login User Name:</label>
							<form:input path="userName" class="form-control" required="true" />

						</div>


						<div class="form-group">
							<label for="password">Your Password:</label>
							<form:password path="password" class="form-control"
								required="true" />

						</div>

						<input type="submit" value="Register"
							class="btn btn-primary btnForRegister" />

					</form:form>

				</div>



			</div>

		</div>

	</div>


	<%@ include file="footer.jsp"%>

</body>
</html>
