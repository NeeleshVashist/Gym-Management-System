<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	<title>Customer Details</title>
</head>

<body>
	
<%	
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires", "0");
	
	if(session.getAttribute("userName") == null) {
		response.sendRedirect("index.jsp");
	}
	
%>


	<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
		<div class="container">
			<a href="GymController" class="navbar-brand"><i class="fas fa-dumbbell"></i> THE GYM</a>
			<button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item">
						<a class="nav-link disabled" href="#" style="color: #F1F1F1;"><i class="fas fa-user"></i> Hello, ${user.userName}</a>
					</li>
					<li class="nav-item">
						<c:url var="logoutLink" value="UserController">
							<c:param name="command" value="LOGOUT"/>
						</c:url>
						<a class="nav-link" href="${logoutLink}" style="color: #F1F1F1;"><i class="fas fa-sign-out-alt"></i> Logout</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- PAGE HEADER -->
	<header id="page-header">
		<div class="container">
			<div class="row">
				<div class="col-md-6 m-auto text-center">
					<h1>${GYM.firstName} Full Details</h1>
					<p>Full Details of the Customer</p>
				</div>
			</div>
		</div>
	</header>

	<br>

	<!-- Tables -->
	<section id="performance-tables">
		<div class="container">

			<div class="row">
				<div class="col-sm-6" style="padding: 10px 15px 10px 15px;">
					<c:url var="checkLink" value="GymController">
						<c:param name="COMMAND" value="LOAD_UPDATER"/>
						<c:param name="serialNo" value="${GYM.serialNo}"/>
					</c:url>
					<a href="${checkLink}" class="btn btn-outline-success btn-block" style="text-decoration: none;">Update Details</a>
				</div>
				
				<div class="col-sm-6" style="padding: 10px 15px 10px 15px;">
					<c:url var="deleteLink" value="GymController">
						<c:param name="COMMAND" value="DELETE"/>
						<c:param name="phoneNumber" value="${GYM.phoneNumber}"/>
					</c:url>
					<a href="${deleteLink }" class="btn btn-outline-danger btn-block" style="text-decoration: none;">Delete Customer</a>
				</div>
			</div>
			
			<br>
			
			<form action="GymController" method="get">
				<input type="hidden" name="serialNo" value="${GYM.serialNo}">
				 
				<div class="row justify-content-md-center">
	
					<div class="col-xs-6 col-md-6">
						<div class="table-responsive">
							<table class="table table-bordered">
								<thead>
									<tr class="table-Info" style="background-color: #cc6e00;">
										<th colspan="2"><h3>General Details</h3></th>
									</tr>
									<tr class="table-Heading" style="background-color: #FF8900;">
										<th>Category</th>
										<th>Detail</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th class="col-info" style="background-color: #ffac4d;">Name</td>
										<td>${GYM.firstName} ${GYM.lastName}</td>
									</tr>
									<tr>
										<th class="col-info" style="background-color: #ffac4d;">Ph. No.</th>
										<td>${GYM.phoneNumber}</td>
									</tr>
									<tr>
										<th class="col-info" style="background-color: #ffac4d;">Sex</th>
										<td>${GYM.sex}</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
	
					<div class="col-xs-6 col-md-6">
						<div class="table-responsive">
							<table class="table table-bordered">
								<thead>
									<tr class="table-Info" style="background-color: #1a7e00;">
										<th colspan="2"><h3>Address Details</h3></th>
									</tr>
									<tr class="table-Heading" style="background-color: #219E00;">
										<th>Catagory</th>
										<th>Detail</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th class="col-info" style="background-color: #64bb4d;">Address</th>
										<td>${GYM.address}</td>
									</tr>
									<tr>
										<th class="col-info" style="background-color: #64bb4d;">City</th>
										<td>${GYM.city}</td>
									</tr>
									<tr>
										<th class="col-info" style="background-color: #64bb4d;">State</th>
										<td>${GYM.state}</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
	
	            </div>
	            
				
				<div class="row justify-content-md-center">
	
					<div class="col-xs-6 col-md-6">
						<div class="table-responsive">
							<table class="table table-bordered">
								<thead>
									<tr class="table-Info" style="background-color: #005a86;">
										<th colspan="2"><h3>Package Details</h3></th>
									</tr>
									<tr class="table-Heading" style="background-color: #1a7fb0;">
										<th>Option</th>
										<th>Selection</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th class="col-info" style="background-color: #80b8d3;">Package Name</th>
										<td>${GYM.packageName}</td>
									</tr>
									<tr>
										<th class="col-info" style="background-color: #80b8d3;">Date of Joining</th>
										<td>${GYM.dateOfJoining}</td>
									</tr>
									<tr>
										<th class="col-info" style="background-color: #80b8d3;">Date of Expiry of Package</th>
										<td>${GYM.dateOfExpiry}</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
	
	                <div class="col-xs-6 col-md-6">
						<div class="table-responsive">
							<table class="table table-bordered">
								<thead>
									<tr class="table-Info" style="background-color: #52322F;">
										<th colspan="2"><h3>Health Details</h3></th>
									</tr>
									<tr class="table-Heading" style="background-color: #754743;">
										<th>Catagory</th>
										<th>Details</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th class="col-info" style="background-color: #976E6A;">Height</td>
										<td>${GYM.height}</td>
									</tr>
									<tr>
										<th class="col-info" style="background-color: #976E6A;">Weight</th>
										<td>${GYM.weight}</td>
									</tr>
									<tr>
										<th class="col-info" style="background-color: #976E6A;">BMI</th>
										<td>${GYM.bmi}</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					
				</div>
			</form>
			
			<br>
			
			<div style="text-align:center; margin-bottom: 25px;">
				<c:url var="listLink" value="GymController">
					<c:param name="COMMAND" value="LIST"/>
				</c:url>
				<button class="btn btn-secondary" type="submit"><a href="${listLink}" style="color: white; text-decoration: none;">Back to List</a></button>
			</div>
		</div>
	</section>

	<br>

	<!-- FOOTER -->
	<footer id="main-footer" class="text-center p-4">
		<div class="container">
			<div class="row">
				<div class="col">
					<p>Copyright &copy;
						<span id="year"></span> Team NMPN</p>
				</div>
			</div>
		</div>
	</footer>


	<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

	<script>
		// Get the current year for the copyright
		$('#year').text(new Date().getFullYear());

	</script>
</body>

</html>