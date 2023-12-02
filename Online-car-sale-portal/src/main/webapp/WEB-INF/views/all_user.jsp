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
.bg-1 {
	padding: 20px;
	margin: 95px 90px;
	border: 1px solid black;
	border-radius: 10px;
	box-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px
		6px 6px;
}

.card {
	box-shadow: rgba(0, 0, 0, 0.07) 0px 1px 2px, rgba(0, 0, 0, 0.07) 0px 2px
		4px, rgba(0, 0, 0, 0.07) 0px 4px 8px, rgba(0, 0, 0, 0.07) 0px 8px 16px,
		rgba(0, 0, 0, 0.07) 0px 16px 32px, rgba(0, 0, 0, 0.07) 0px 32px 64px;
	padding: 15px;
	margin-left: 110px;
	margin-top: 25px;
	margin-bottom: 25px;
	border-radius: 10px;
}

.card-container {
	width: 100%;
	height: 100%;
}

.card-body{
	margin-top: 10px;
}

.btn1 {
	width: 100%;
	padding: 5px;
	border-radius: 5px;
	background-color: #286090;
	font-weight: 700;
	color: white;
	margin-bottom: 10px;
}

.btn1:hover {
	background-color: white;
	border: 1px solid #286090;
	color: black;
	padding: 5px;
	border-radius: 5px;
}

table{
	margin-right: 40px;
	
}
</style>
</head>

<body>

	<%@ include file="header.jsp"%>


	<!-- First Container -->
	<div class="container_5 bg-1">
		<div>
			<h2 class="t1 text-center"
				style="margin-bottom: 24px; color: #286090">User List</h2>
			<br>
			<br>

			<div class="row">

				<div class="col-md-12">

					<c:if test="${not empty userlists}">

						<table class="table table-bordered">

							<thead class="dark">
								<tr>
									<th>No.</th>
									<th>User ID</th>
									<th>Full Name</th>
									<th>User Name</th>
									<th>Password</th>
								</tr>
							</thead>

							<tbody class="fw-bold bg-white ">

								<%
								int i = 1;
								%>
								<c:forEach var="user" items="${userlists}">
									<div class="card col-md-4" style="width: 28rem;">
										<img class="card-img-top card-image"
											src="https://i.pinimg.com/564x/0f/7b/b9/0f7bb90ce7359460744e385c474522b1.jpg" alt="User image">
										<div class="card-body">

											<p>
												<label>Full Name : </label> ${user.name}</p>

											<p>
												<label>User Name : </label> ${user.userName}</p>

											<p>
												<label>Password : </label> ******</p>
											<sec:authorize access="hasRole('Administrator')">
												<a href="edit_u?id=${user.id}">
													<button class="btn1">Update</button>
												</a>
												<a href="delete_u?id=${user.id}">
													<button class="btn1">Delete</button>
												</a>
											</sec:authorize> <a href="user_detail?id=${user.id}">
												<button class="btn1 ">View</button>
										</a>
										</div>
									</div>

									 <tr>
										<td><%=i%></td>
										<td>${user.id}</td>
										<td>${user.name}</td>
										<td>${user.userName}</td>
										<td>******</td>
									</tr>
									<%
									i++;
									%>

								</c:forEach>

							</tbody>
						</table>

					</c:if>

				</div>
			</div>

			<!--  End User Lists  -->

		</div>
	</div>


	<%@ include file="footer.jsp"%>
</body>
</html>