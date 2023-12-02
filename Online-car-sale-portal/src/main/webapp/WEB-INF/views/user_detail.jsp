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
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"><link rel="stylesheet" href="./style.css">


<!--  Access the Static Resources without using spring URL -->
<link href="/css/style.css" rel="stylesheet" />
<script src="/js/custom.js"></script>

<style type="text/css">
.bg-1{
  background-size: cover;
  background-repeat: no-repeat;
  background-image: url("/images/bg-1.jpg");
  overflow: hidden;

}</style>
</head>

<body>

	<!-- Test My JS -->
	<!-- <input type="button" class="button" onclick="sayHello();" value="Click me!">  -->

	<%@ include file="header.jsp"%>


	

	<!-- First Container -->
	<div class="container_5 bg-1">
	
		<div class="row">
		<h3 class="t1 red text-center">User Detail Information </h3></div><br>
<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6">

		<form:form >
				
								
		<table class="table light">
		 <tr>
	      <th><label for="id" class="">ID : </label></th>
	      <td><div class="">${user.id}</div></td>
	    </tr>

		 <tr>
	      <th><label for="make" >Name : </label></th>
	      <td><div>${user.name}</div></td>
	    </tr>

		 <tr>
	      <th><label for="model">User Name : </label></th>
	      <td><div>${user.userName}</div></td>
	    </tr>

		 <tr>
		      <th><label for="reg" >Password : </label></th>
		      <td><div >******</div></td>
		    </tr>

		
		 <tr>
		      <th></th>
		      <td>
				<a href="users" class="btn btn-danger">Go Back</a>

		      </td>
		    </tr>
		    
		 <tr>
	    </tr>


		</table>
		

		

		</form:form>



	</div>
	
			<div class="col-md-3"></div>
	
	</div>
	</div>
	






	<%@ include file="footer.jsp"%>

</body>
</html>
