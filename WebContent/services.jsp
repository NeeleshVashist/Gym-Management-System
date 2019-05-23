<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	<title>Services</title>
</head>

<body>
	<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
		<div class="container">
			<a href="index.jsp" class="navbar-brand"><i class="fas fa-dumbbell"></i> THE GYM</a>
			<button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item">
						<a href="index.jsp" class="nav-link"><i class="fas fa-home"></i> Home</a>
					</li>
					<li class="nav-item">
						<a href="about.jsp" class="nav-link"><i class="fas fa-users"></i> About Us</a>
					</li>
					<li class="nav-item active">
						<a href="services.jsp" class="nav-link"><i class="fas fa-info-circle"></i> Services</a>
					</li>
					<li class="nav-item">
						<a href="login.jsp" class="nav-link"><i class="fas fa-sign-in-alt"></i> Login</a>
					</li>
					<!-- <li class="nav-item">
						<a href="search.html" class="nav-link"><i class="fas fa-search"></i> Search</a>
					</li> -->
				</ul>
			</div>
		</div>
	</nav>

	<!-- PAGE HEADER -->
	<header id="page-header">
		<div class="container">
			<div class="row">
				<div class="col-md-6 m-auto text-center">
					<h1>Our Services</h1>
					<p>Check out our various packages</p>
				</div>
			</div>
		</div>
	</header>

	<!-- SERVICES SECTION -->
	<section id="services" class="py-5">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="card text-center">
						<div class="card-header text-white" style="background-image: linear-gradient(to right, #02aab0, #004e92)">
							<h3>Package One</h3>
						</div>
						<div class="card-body">
							<h4 class="card-title"><i class="fas fa-rupee-sign"></i> 6000</h4>
							<p class="card-text">Best for short duration</p>
							<ul class="list-group">
								<li class="list-group-item">
									<i class="fas fa-check"></i> Power Yoga
								</li>
								<li class="list-group-item">
									<i class="fas fa-check"></i> CrossFit
								</li>
								<li class="list-group-item">
									<i class="fas fa-check"></i> Zumba | Bhangra
								</li>
								<li class="list-group-item">
									-
								</li>
								<li class="list-group-item">
									-
								</li>
							</ul>
						</div>
						<div class="card-footer text-muted">
							3 Months Plan
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card text-center">
						<div class="card-header text-white" style="background-image: linear-gradient(to right, #004e92, #004e92)">
							<h3>Package Two</h3>
						</div>
						<div class="card-body">
							<h4 class="card-title"><i class="fas fa-rupee-sign"></i> 10500</h4>
							<p class="card-text">Most Popular</p>
							<ul class="list-group">
								<li class="list-group-item">
									<i class="fas fa-check"></i> Power Yoga
								</li>
								<li class="list-group-item">
									<i class="fas fa-check"></i> CrossFit
								</li>
								<li class="list-group-item">
									<i class="fas fa-check"></i> Zumba | Bhangra
								</li>
								<li class="list-group-item">
									<i class="fas fa-check"></i> Spa
								</li>
								<li class="list-group-item">
									-
								</li>
							</ul>
						</div>
						<div class="card-footer text-muted">
							6 Months Plan
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card text-center">
						<div class="card-header text-white" style="background-image: linear-gradient(to right, #004e92, #02aab0)">
							<h3>Package Three</h3>
						</div>
						<div class="card-body">
							<h4 class="card-title"><i class="fas fa-rupee-sign"></i> 18000</h4>
							<p class="card-text">Best Value for Money</p>
							<ul class="list-group">
								<li class="list-group-item">
									<i class="fas fa-check"></i> Power Yoga
								</li>
								<li class="list-group-item">
									<i class="fas fa-check"></i> CrossFit
								</li>
								<li class="list-group-item">
									<i class="fas fa-check"></i> Zumba | Bhangra
								</li>
								<li class="list-group-item">
									<i class="fas fa-check"></i> Spa
								</li>
								<li class="list-group-item">
									<i class="fas fa-check"></i> Bootcamps | Trekking
								</li>
							</ul>
						</div>
						<div class="card-footer text-muted">
							1 Year Plan
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

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


	<script src="http://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
		crossorigin="anonymous"></script>

	<script>
		// Get the current year for the copyright
		$('#year').text(new Date().getFullYear());

	</script>
</body>

</html>
