<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">

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
.pfcontainer {
	background-color: white;
	margin: 100px 100px;
	box-shadow: 11px 7px 40px -5px rgba(0, 0, 0, 0.54);
	border-radius: 20px;
}

.pfInfoContainer {
	padding: 20px;
	display: flex;
	margin-top: 25px;
}

.pfInfoContainer p {
	font-size: 24px;
	font-weight: 600;
	font-family: Poppins, sans-serif;
}

.containerForCard .row {
	padding: 30px;
	margin-top: 25px;
}

.containerForCard img {
	width: 100%;
	height: 100%;
}

.card {
	box-shadow: 11px 7px 40px -5px rgba(0, 0, 0, 0.54);
	border: 1px dotted black;
	margin-left: 80px;
	border-radius: 10px;
}

.card img{
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}

.card-body {
	padding: 25px;
}

.btn {
	width: 100%;
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>

	<div class="pfcontainer">
		<div class="pfInfoContainer">
			<img src="/images/avator.png"
				style="width: 120px; height: 120px; border-radius: 75px; margin-left:20px; padding: 10px; border: 1px solid black" /><br>
			<br>
			<p style="margin-left: 45px; margin-top: 45px">${user.userName}</p>
		</div>
		<hr style="color: black; height: 10px">
	</div>
	<h1
		style="font-size: 30px; text-align: center; margin-top: 40px; font-weight: 600; color: black;">Car
		Selling History</h1>
	<div class="pfcontainer">
		<div class="containerForCard">
			<div class="row">
				<div class="col-sm-4">
					<div class="card" style="width: 26rem;">
						<img class="card-img-top" src="/images/Untuk.jpg"
							alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title">GTR</h5>
							<p class="card-text">This is for sale. I got this car as a bd
								present from my dad.</p>
							<a href="cars" class="btn btn-primary">View</a>
						</div>
					</div>
				</div>
				<div class="col-sm-4 ">
					<div class="card" style="width: 26rem;">
						<img class="card-img-top" src="/images/GTRR.jpg"
							alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title" style="margin-top: -10px">GTRR</h5>
							<p class="card-text">This car is for sale.</p>
							<a href="cars" class="btn btn-primary">View</a>
						</div>
					</div>
				</div>
				<div class="col-sm-4 ">
					<div class="card" style="width: 26rem;">
						<img class="card-img-top" src="/images/OIP (2).jpg"
							alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title">OIP (2)</h5>
							<p class="card-text">This car is for sale. But its not mine.</p>
							<a href="cars" class="btn btn-primary">View</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<%@ include file="footer.jsp"%>
</body>
</html>