<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
.carList-container {
	padding: 20px;
	margin: 95px 90px;
	border: 1px solid black;
	border-radius: 10px;
	box-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px 6px 6px;
}

.row{
	margin: 0px 45px;
}

.img-container {
	background-repeat: no-repeat;
	width: 100%;
	background-size: cover;
	text-align: center;
	margin-top: 20px;
	color: white;
}

.card-image {
	width: 100%;
	height: 100%;
	border-radius: 10px;
}

.card {
	box-shadow: rgba(0, 0, 0, 0.07) 0px 1px 2px, rgba(0, 0, 0, 0.07) 0px 2px 4px, rgba(0, 0, 0, 0.07) 0px 4px 8px, rgba(0, 0, 0, 0.07) 0px 8px 16px, rgba(0, 0, 0, 0.07) 0px 16px 32px, rgba(0, 0, 0, 0.07) 0px 32px 64px;
	padding: 15px;
	margin-left:85px;
	margin-top: 25px;
	margin-bottom: 25px;
	border-radius: 10px;
}

.card-container {
	width: 100%;
	height: 100%;
}

.btn1 {
	width: 100%;
	padding: 5px;
	border-radius: 5px;
	background-color: #286090;
	font-weight: 700;
	color: white;
}

.btn1:hover {
	background-color: white;
	border: 1px solid #286090;
	color: black;
	padding: 5px;
	border-radius: 5px;
}
</style>
</head>

<body>

	<%@ include file="header.jsp"%>

	<div class="img-container">
		<img alt="Carphoto"
			src="https://i.pinimg.com/564x/b4/9f/ff/b49fff8a2abc3409ae935f4b05d8dd8c.jpg">
	</div>
	<!-- First Container -->
	<div class="container_5 ">

		<div class="carList-container">
		
			<h4 class="t1 text-center" style="margin-bottom: 24px; color: #286090">Car List</h4>
			<c:if test="${not empty error_message}">
				<p>${error_message}</p>
			</c:if>

			<c:if test="${empty cars}">
				<sec:authorize access="hasRole('Administrator')">
					<span> No Cars are added yet. </span>
				</sec:authorize>
				<sec:authorize access="hasRole('Users')">
					<span> Please click on Add button to add Cars to the system.
					</span>
				</sec:authorize>
			</c:if>


			<!--  All Car Lists  -->
			<div class="row">
				<div class="col-md-12">

					<sec:authorize access="hasRole('Users')">
						<a href="new_car">
							<button class="btn btn-primary">Post A Car For Sale</button>
						</a>
					</sec:authorize>

					<c:url var="get_search_url" value="search" />
					<form action="${get_search_url}" id="myform" method="get"
						class="form-inline text-right"
						style="padding: 20px; margin-top: -50px">

						<input class="form-control mr-sm-2" type="search"
							placeholder="Search" value="" name="keyword" /> <input
							type="submit" value="Search" class="btn btn-info" />

					</form>

				</div>
			</div>

			<div class="row">



				<div class="card-container col-md-12">

					<c:if test="${not empty cars}">

						<%
						int i = 1;
						%>

						<c:forEach var="car" items="${cars}">

							<div class="card col-md-4" style="width: 28rem;">
								<img class="card-img-top card-image"
									src="/images/${car.carphoto}" alt="Card image cap">
								  <div class="card-body">
								<h5 class="card-title">${car.make}</h5>

								<p>
									<label>Car Model : </label>${car.model}</p>

								<p>
									<label>Car Registeration : </label>${car.registeration}</p>

								<p>
									<label>Car Price : </label>${car.price}</p>
								<sec:authorize access="hasRole('Administrator')">
									<a href="edit?id=${car.id}">
										<button class="btn1 ">Update</button>
									</a><br/><br/>
									<a href="delete?id=${car.id}">
										<button class="btn1 ">Delete</button>
									</a><br/><br/>
								</sec:authorize>
								<a href="car_detail?id=${car.id}">
									<button class="btn1">View</button>
								</a>
							</div>
							</div>

						</c:forEach>


					</c:if>


				</div>

			</div>

			<!--  End Car Lists  -->

		</div>
	</div>


	<%@ include file="footer.jsp"%>
</body>
</html>