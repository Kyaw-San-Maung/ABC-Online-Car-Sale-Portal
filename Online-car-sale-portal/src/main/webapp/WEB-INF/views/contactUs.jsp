<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

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
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"><link rel="stylesheet" href="./style.css">
<style type="text/css">
    
.fw-bold{
	font-weight: 800;
} .fs-5{
	font-size: 15px;
}
.contactUsText{
	text-align: center;
	margin: auto;
	margin-bottom: 20px;
}
.bg-1{
  background-size: cover;
  background-repeat: no-repeat;
  background-image: url("/images/cont.jpg");
  overflow: hidden;
background-position:center;
margin: 0px 70px 0px 70px;
height:250px
}
.bg_11{
background-color: white;
border:1px solid black;
color: black;
margin: 0 45px;
box-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px 6px 6px;
}
.container_2{
padding: 30px 70px 50px 70px; 
	margin: 0px 70px 50px 70px;
		color: black;
	
	
}.container_3{
padding: 40px 50px 40px 20px; 
	margin: 95px 70px;
	border-radius: 15px;
}

.form{
	margin-bottom: 20px;
}

.map{
	width: 100%;
}

.btnSend{
	width: 100%;
}
</style>

<!--  Access the Static Resources without using spring URL -->
<link href="/css/style.css" rel="stylesheet" />
<script src="/js/custom.js"></script>

</head>

<body>

	<!-- Test My JS -->
	<!-- <input type="button" class="button" onclick="sayHello();" value="Click me!">  -->

	<%@ include file="header.jsp"%>


	<!-- First Container -->
	<div class="container_3 bg_11">
	<div class="contactUsText"><h2 style="font-size: 55px; font-weight: 800; color: #286090">Contact Us</h2></div>
		<div class="container_2  fw-bold">
				
				<div class="row form">
					<div class="col-sm-5">
						<p>Contact us and we'll get back to you within 24 hours.</p> <br>
						<p>
							<span class="glyphicon glyphicon-map-marker"></span> Kyaw San Maung, Yangon
						</p>
						<p>
							<span class="glyphicon glyphicon-phone"></span> +95 9788 234 477
						</p>
						<p>
							<span class="glyphicon glyphicon-envelope"></span>
							kyawsanmaung271122@gmail.com
						</p>
					</div>
					<div class="col-sm-7 slideanim">
						<div class="row">
							<div class="col-sm-6 form-group">
								<input class="form-control" id="name" name="name"
									placeholder="Name" type="text" required>
							</div>
							<div class="col-sm-6 form-group">
								<input class="form-control" id="email" name="email"
									placeholder="Email" type="email" required>
							</div>
						</div>
						<textarea class="form-control" id="comments" name="comments"
							placeholder="Comment" rows="5"></textarea>
						<br>
						<div class="row">
							<div class="col-sm-12 form-group">
								<button class="btn btn-success btnSend" type="submit">Send</button>
							</div>
						</div>
					</div>
					
		</div>
		
		<div class="map">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7638.878920104568!2d96.13510593058027!3d16.804541076383455!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30c1eb44170adf1b%3A0x4be1f7384cc20c2b!2sDagon%20Centre%202!5e0!3m2!1smy!2smm!4v1673538824905!5m2!1smy!2smm" width="1000" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
		
	</div>

</div>


	<%@ include file="footer.jsp"%>

</body>
</html>
