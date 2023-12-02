<%@ page contentType="text/html; charset=US-ASCII"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<div class="container_5 bg-1">
		<div>
			<h2 class="t1 text-center">Search Car Results</h2>

			<!--  Search Car Lists  -->
			
			<div class="row">
				<div class="col-md-12">
				<c:url var="get_search_url" value="search"/>
				<form action="${get_search_url}" id="myform" method="get" class="form-inline text-right" style="padding:20px;">
					<input class="form-control mr-sm-2" type="search" placeholder="Search" value="${keyword}" name="keyword" />
						<input type="submit" value="Search" class="btn btn-info"/>

				</form>

				</div>
			</div>

			<div class="row">

				<div class="col-md-12">
				
					<c:if test="${empty search_cars}">
						<div>
							<h4 class="text-danger text-center"> No Matching Item Found. </h4>	
							<h5 class="text-danger text-center"> Please try with another keyword.</h5>	
						</div>	
					</c:if>
					
					<c:if test="${not empty search_cars}">
					
					<table class="table table-striped table-bordered">

						<thead class="dark">
							<tr>
								<th>No.</th>
								<th>Car Photo</th>
								<th>Car Make</th>
								<th>Model</th>
								<th>Reg No.</th>
								<th>Price</th>
								<th>Actions</th>
							</tr>
						</thead>
						
						<tbody class="fw-bold">
						
						<% int i=1; %>
						<c:forEach var="car" items="${search_cars}">
						
							<tr>
								<td><%=i %></td>
								<td><img src="/images/${car.carphoto}"  class="card-img-top" style="width: 60px; height: 45px"></td>
								<td>${car.make}</td>
								<td>${car.model}</td>
								<td>${car.registeration}</td>
								<td>${car.price} </td>

								<td>
									<a href="car_detail?id=${car.id}">
									<button class="btn btn-info">View </button>
									</a>
								</td>
							</tr>
							<% i++; %>
						</c:forEach>

						</tbody>
					</table>
					
					</c:if>
					
				</div>
			</div>
			
			<!--  End Car Lists  -->

		</div>
	</div>


	<%@ include file="footer.jsp"%>
</body>
</html>