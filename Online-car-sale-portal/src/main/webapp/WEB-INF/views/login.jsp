<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<title>Login Page</title>
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
body {
	background-size: cover;
	background-repeat: no-repeat;
	background-attachment: fixed;
	font-family: "Open Sans", sans-serif;
	color: #333333;
}

box-form {
	margin: 25px auto;
	width: 65%;
	background: #FFFFFF;
	border-radius: 15px;
	overflow: hidden;
	display: flex;
	flex: 1 1 100%;
	align-items: stretch;
	justify-content: space-between;
	box-shadow: 0 0 20px 6px #090b6f85;
	font-family: "Open Sans", sans-serif;
}

@media ( max-width : 899px) {
	.box-form {
		flex-flow: wrap;
		text-align: center;
		align-content: center;
		align-items: center;
	}
}

.box-form div {
	height: auto;
}

.box-form .left .overlay {
	padding: 30px;
	width: 100%;
	height: 100%;
	background: #5961f9ad;
	overflow: hidden;
	box-sizing: border-box;
}

.box-form .left .overlay h1 {
	font-size: 10vmax;
	line-height: 1;
	font-weight: 900;
	margin-top: 40px;
	margin-bottom: 20px;
}

.box-form .left .overlay span p {
	margin-top: 30px;
	font-weight: 900;
}

.box-form .left .overlay span a {
	background: #3b5998;
	color: #FFFFFF;
	margin-top: 10px;
	padding: 14px 50px;
	border-radius: 100px;
	display: inline-block;
	box-shadow: 0 3px 6px 1px #042d4657;
}

.box-form .left .overlay span a:last-child {
	background: #1dcaff;
	margin-left: 30px;
}

.text_Container {
	background-image:url("https://i.pinimg.com/564x/40/8d/2c/408d2c1134d79b44260a370be69f18f1.jpg");
	background-repeat: no-repeat;
	width:100%;
	background-size: cover;
	text-align: center;
	margin-bottom: 25px;
	padding: 10% 0;
	color:white;
}

.box-form .right {
	padding: 40px;
	margin: 45px 150px;
	border: 1px solid black;
	border-radius: 20px;
}

@media ( max-width : 980px) {
	.box-form .right {
		width: auto;
	}
}

.box-form .right h5 {
	font-size: 5rem;
	font-weight: 750;
	line-height: 0;
}

.box-form .right p {
	font-size: 14px;
	color: black;
}

.box-form .right .inputs {
	overflow: hidden;
}

.box-form .right input {
	width: 100%;
	padding: 10px;
	margin-top: 25px;
	font-size: 16px;
	border: none;
	outline: none;
	border-bottom: 2px solid #B0B3B9;
}

.box-form .right .remember-me--forget-password {
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.box-form .right .remember-me--forget-password input {
	margin: 0;
	margin-right: 7px;
	width: auto;
}

.box-form .right button {
	float: right;
	color: #fff;
	font-size: 16px;
	padding: 12px 35px;
	border-radius: 50px;
	display: inline-block;
	border: 0;
	outline: 0;
	box-shadow: 0px 4px 20px 0px #286fc6a6;
	background-image: linear-gradient(135deg, #7098f5 10%, #2848c6 100%)
		!important;
}

label {
	display: block;
	position: relative;
	margin-left: 30px;
}

label::before {
	content: ' \f00c';
	position: absolute;
	font-family: FontAwesome;
	background: transparent;
	border: 3px solid #3825fe;
	border-radius: 4px;
	color: transparent;
	left: -30px;
	transition: all 0.2s linear;
}

label:hover::before {
	font-family: FontAwesome;
	content: ' \f00c';
	color: #fff;
	cursor: pointer;
	background: #3825fe;
}

label:hover::before .text-checkbox {
	background: #3825fe;
}

label span.text-checkbox {
	display: inline-block;
	height: auto;
	position: relative;
	cursor: pointer;
	transition: all 0.2s linear;
}

label input[type="checkbox"] {
	display: none;
}

.box-form .left {
	color: #FFFFFF;
	background-size: cover;
	background-repeat: no-repeat;
	background-image: url("/images/Log_bg.jpeg");
	overflow: hidden;
}
</style>

</head>

<body class="login-body">

	<%@ include file="header.jsp"%>


	<div class="container_1">

		<div class="text_Container">
			<div class="overlay">
				<h4 class="t1">Get Your Car</h3>
				<p style="font-size: 30px; font-weight: 800">
					Hurry Up. You would have <span style="color: red">special
						offers</span> in our car sale. Get your own car
				</p>
				<br>
				<p class="fw-bold fs-5 text-white" style="font-size: 20px; font-weight: 600">
					Sell your car in <span style="color: red">Here...</span>!
				</p>
			</div>
		</div>
		<div class="box-form">



			<div class="right">
				<h5 style="text-align: center; color: #286090; font-weight: 800">Login</h5>
				<br> <br>

				<c:if test="${error_string != null}">

					<div class="alert alert-danger">${error_string}</div>

				</c:if>

				<form action="/login" method="post">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />

					<div class="inputs">
						<input type="text" name="username" id="username" value=""
							placeholder="User Name"> <br> <input type="password"
							name="password" id="password" value="" placeholder="Password">
					</div>

					<br> <br> <a href="new">forget password?</a> <br> <input
						type="submit" name="Login" value="Login" class="btn btn-primary"></input><br/><br/>
					<p>
						Don't have an account? <a href="new">Creat Your Account</a> it
						takes less than a minute
					</p>
				</form>
			</div>

		</div>

		<!--Review Part start-->
		<section class="reivew">
		<h2 class="heading"
			style="text-align: center; color: black; font-weight: 750">Review
			From The Clients</h2>

		<div class="box-container">

			<div class="box">
				<div class="image">
					<img
						src="https://i.pinimg.com/564x/95/13/e5/9513e563f71742fcd0a30bc38619d9dc.jpg"
						alt="img">
				</div>
				<div class="name">
					<h1>Mr Jhon</h1>
					<p>Client or User of ABC car sale company's.</p>
				</div>
				<p>ABC Car Sale Company's website is a 5/5. User-friendly, vast
					inventory, and transparent. Highly recommended!</p>
			</div>

			<div class="box">
				<div class="image">
					<img
						src="https://i.pinimg.com/564x/f1/c9/93/f1c993b60892dbf24bf80f934598aae9.jpg"
						alt="img">
				</div>
				<div class="name">
					<h1>Mg Kyaw San Maung</h1>
					<p>Client or User of ABC car sale company's.</p>
				</div>
				<p>ABC Car Sale Company - A 5-star website! User-friendly,
					diverse inventory, and price transparency. We all love it!ABC Car
					Sale Company - A 5-star website! User-friendly, diverse inventory,
					and price transparency. We all love it!</p>
			</div>

			<div class="box">
				<div class="image">
					<img
						src="https://i.pinimg.com/736x/82/6d/c3/826dc3198b233a0e6293054dbde5b8e3.jpg"
						alt="img">
				</div>
				<div class="name">
					<h1>Mr Hazel</h1>
					<p>Client or User of ABC car sale company's.</p>
				</div>
				<p>ABC Car Sale Company's website is a gem! Easy to use, great
					selection, and clear prices. Highly recommended by all three of us!
				</p>
			</div>

		</div>
		</section>
		<!--Review Part end-->
	</div>

	<%@ include file="footer.jsp"%>

</body>


</html>
