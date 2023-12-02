<!-- Navbar -->
<nav class="navbar navbar-inverse">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand"> <img
				src="/images/Logo_1.png" width="85px" />
			</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">

				<sec:authorize access="!isAuthenticated()">
					<li><a class="fw-bold fs-5" href="cus_login_page" >Login</a></li>
					<li><a class="fw-bold fs-5" href="new" >Register</a></li>
					<li><a class="fw-bold fs-5" href="about" >About Us</a></li>
					<li><a class="fw-bold fs-5" href="contact" >Contact Us</a></li>
				</sec:authorize>


				<sec:authorize access="isAuthenticated()">

				<sec:authorize access="hasRole('Users')">
					 <li><a class="fw-bold fs-5" href="cars">Used Cars</a></li>
					 <li><a class="fw-bold fs-5" href="new_car">Sell Your Car</a></li>
					 <li><a class="fw-bold fs-5" href="profile"><img src = "/images/avator.png" style="width: 30px; height: 30px; border-radius: 10px"/></a></li>
				</sec:authorize>
				
				<sec:authorize access="hasRole('Administrator')">
					 <li><a class="fw-bold fs-5" href="cars">Car Management </a></li>
					 <li><a class="fw-bold fs-5" href="users">User Management</a></li>
					 
				</sec:authorize>
				
					
			    <!-- /logout must be a POST request, as csrf is enabled.
			        This ensures that log out requires a CSRF token and that a malicious user cannot forcibly log out your users.-->
					
					<li>
					<form action="logout" method="post" style="padding:7px;">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
							<input type="submit"
							name="Logout" value="Logout" class="btn btn-primary fs-5 fw-bold"></input>
					</form>
					</li>
				</sec:authorize>
				



			</ul>
		</div>
	</div>
</nav>
