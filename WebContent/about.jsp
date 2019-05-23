<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css" />
	<link rel="stylesheet" href="css/style.css">
	<title>About Us</title>
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
					<li class="nav-item active">
						<a href="about.jsp" class="nav-link"><i class="fas fa-users"></i> About Us</a>
					</li>
					<li class="nav-item">
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
					<h1>About Us</h1>
					<p>THE GYM - No Ordinary Experience</p>
				</div>
			</div>
		</div>
	</header>

	<!-- ABOUT SECTION -->
	<section id="about" class="py-3">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<h1>What We Do</h1>
					<h5>THE GYM - No Ordinary Experience</h5>
					<p>THE GYM is no ordinary experience. It is a unique lifestyle program designed to achieve every individual member's 
						respective health and fitness goals. Whether our members are beginners or enthusiasts, every program, product, 
						and experience we offer begins and ends with creating a premier and comfortable atmosphere tailored for their 
						individual and overall success and safety.</p>
					
					<br>

					<h5>THE GYM: Trained to succeed.</h5>
				</div>

				<div class="col-md-6">
					<img src="https://source.unsplash.com/collection/4827585/700x700" alt="" class="img-fluid rounded-circle d-none d-md-block about-img">
				</div>
			</div>
		</div>
	</section>

	<!-- ICON BOXES -->
	<section id="icon-boxes" class="p-5">
		<div class="container">
			<div class="row mb-4">
				<div class="col-md-4">
					<div class="card bg-danger text-white text-center">
						<div class="card-body">
							<i class="fas fa-running fa-3x"></i>
							<h3>Sleep. Work. Train. Repeat.</h3>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card bg-dark text-white text-center">
						<div class="card-body">
							<i class="fas fa-smile fa-3x"></i>
							<h3>Pain is temporary, pride is forever</h3>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card bg-danger text-white text-center">
						<div class="card-body">
							<i class="fas fa-heart fa-3x"></i>
							<h3>Train like a beast, look like a beauty.</h3>
						</div>
					</div>
				</div>
			</div>

			<div class="row mb-4">
				<div class="col-md-4">
					<div class="card bg-dark text-white text-center">
						<div class="card-body">
							<i class="fas fa-trophy fa-3x"></i>
							<h3>Winners Train, Losers Complain.</h3>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card bg-danger text-white text-center">
						<div class="card-body">
							<i class="fas fa-dumbbell fa-3x"></i>
							<h3>Strength Within, Pride Throughout</h3>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card bg-dark text-white text-center">
						<div class="card-body">
							<i class="fas fa-infinity fa-3x"></i>
							<h3>Good is not enough if better is possible.</h3>
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


	<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.js"></script>

	<script>
		// Get the current year for the copyright
		$('#year').text(new Date().getFullYear());

		$('.slider').slick({
			infinite: true,
			slideToShow: 1,
			slideToScroll: 1
		});
	</script>
</body>

</html>