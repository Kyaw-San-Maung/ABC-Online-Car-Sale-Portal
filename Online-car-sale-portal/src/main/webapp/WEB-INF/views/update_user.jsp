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

	<%@ include file="header.jsp"%>


	<!-- First Container -->
	<div class="container_5 bg-1 text-center">
		<h3 class="t1 red">Edit User Details</h3>
		<br><br>
		<div class="row">

			<div class="col-md-4"></div>

			<div class="col-md-4">


			

				
			<form:form action="/save2" method="post" modelAttribute="user">
				<input type="hidden" value="${_csrf.token}"/>
					
				<form:hidden path="id" />
			
				<div class="form-group">
					<label for="username" class=" fw-bold">Your Full Name:</label>
					<form:input path="name" class="form-control" required="true"/>
				</div>
				
				<div class="form-group">
					<label for="username" class=" fw-bold">Your Login User Name:</label>
					<form:input path="userName" class="form-control" required="true"/>
					
				</div>
				
				
				<div class="form-group red">
					<label for="password" class="red fw-bold">Change The Password:</label>
					<form:password path="password" class="form-control" />
					
				</div>
				
		      <input type="submit" name="Add" value="Save" class="btn btn-success" />
		      <input type="button" class="btn btn-danger" value="Cancel" onclick="cancel()" />
				<script>
					function cancel() {
						window.location.href = "users"
					}
				</script>
					
			</form:form>
		
		    
					
					
					


			</div>


			<div class="col-md-4"></div>

		</div>

	</div>
	


	<%@ include file="footer.jsp"%>

</body>
</html>
