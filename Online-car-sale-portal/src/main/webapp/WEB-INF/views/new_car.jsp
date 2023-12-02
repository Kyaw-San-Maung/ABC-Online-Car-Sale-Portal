<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
.bg-1 {
	margin: 120px 120px;
	border: 1px solid black;
	border-radius: 10px;
	box-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px
		6px 6px;
}

.form-text{
	margin: 35px 0px;
}

.form-container{
	margin: 25px 50px;
	text-align: left;
	padding: 0px 25px;
}

.btn1{
	width: 49.5%;
	border-radius: 5px;
	padding: 8px;
	border:none;
	background-color: #286090;
	color: white;
	font-weight: 700;
	font-style: 18px;
}

.btn1:hover {
	background-color:white;
	border: 1px solid #286090;
	color:black;
	 transition-delay: 0.2s;
	
}
</style>

</head>

<body>

	<%@ include file="header.jsp"%>


	<!-- First Container -->
	<div class="container_5 bg-1 text-center">
	<div class="form-text"></div>
		<h3 class="t1 " style="color: #286090">Post A Car For Sale !</h3>
		<br> <br>
		<div class="row">

			

			<div class="col-md-12">

				<form:form method="POST" action="/cars" modelAttribute="car"
					enctype="multipart/form-data">

					<input type="hidden" value="${_csrf.token}" />

					<form:hidden path="id" />
					<div class="form-container">
						
						<fieldset>
							<div class="form-group">
								<label for="carphoto">Upload Car Photo<input
									type="file" name="file" class="form-control" /></label>

							</div>

							<div class="form-group">
								<label for="make">Car Make</label>
								<form:input path="make" class="form-control" />
							</div>

							<div class="form-group">
								<label for="model">Car Model</label>
								<form:input path="model" class="form-control"/>
							</div>

							<div class="form-group">
								<label for="registeration"> Registeration Number</label>
								<form:input path="registeration" class="form-control"/>
							</div>

							<div class="form-group">
								<label for="price">Car Price</label>
								<form:input path="price" class="form-control"/>
							</div>

							<!-- Save and Cancel Button -->
							<input type="submit" name="Add" value="Save"
								class="btn1 " /> <input type="button"
								class="btn1 " value="Cancel" onclick="cancel()" />
							<script>
								function cancel() {
									window.location.href = "cars"
								}
							</script>
						</fieldset>

					</div>

					<!--  
					<tr>
						<th><label for="carphoto">Upload Car Photo:</label></th>
						<td><input type="file" name="file" /></td>
					</tr>

					<tr>
						<th><label for="make">Car Make:</label></th>
						<td><form:input path="make" /></td>
					</tr>

					<tr>
						<th><label for="model">Car Model:</label></th>
						<td><form:input path="model" /></td>
					</tr>

					<tr>
						<th><label for="registeration"> registeration:</label></th>
						<td><form:input path="registeration" /></td>
					</tr>

					<tr>
						<th><label for="price">Car Price:</label></th>
						<td><form:input path="price" /></td>
					</tr>

					<tr>
						<th></th>
						<td></td>
					</tr>

					<tr>
						<td></td>
						<td><input type="submit" name="Add" value="Save"
							class="btn btn-success" /> <input type="button"
							class="btn btn-danger" value="Cancel" onclick="cancel()" /> <script>
								function cancel() {
									window.location.href = "cars"
								}
							</script></td>
					</tr>-->

				</form:form>

			</div>

		</div>

	</div>



	<%@ include file="footer.jsp"%>

</body>
</html>
