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
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css" />
	<link rel="stylesheet" href="css/style.css">
	<title>Home</title>
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
					<li class="nav-item active">
						<a href="index.jsp" class="nav-link"><i class="fas fa-home"></i> Home</a>
					</li>
					<li class="nav-item">
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

	<!-- SHOWCASE SLIDER -->
	<section id="showcase">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item carousel-image-1 active">
					<div class="container">
						<div class="carousel-caption d-none d-sm-block text-right mb-5">
							<h1 class="display-3">Challenge<br>Yourself</h1>
						</div>
					</div>
				</div>

				<div class="carousel-item carousel-image-2">
					<div class="container">
						<div class="carousel-caption d-none d-sm-block text-left mb-5">
							<h1 class="display-3">Feel<br>Good<br>Breath</h1>
						</div>
					</div>
				</div>

				<div class="carousel-item carousel-image-3">
					<div class="container">
						<div class="carousel-caption d-none d-sm-block text-right mb-5">
							<h1 class="display-3">Optimize<br>Your<br>Health</h1>
						</div>
					</div>
				</div>
			</div>

			<a href="#myCarousel" data-slide="prev" class="carousel-control-prev">
				<span class="carousel-control-prev-icon"></span>
			</a>

			<a href="#myCarousel" data-slide="next" class="carousel-control-next">
				<span class="carousel-control-next-icon"></span>
			</a>
		</div>
	</section>

	<!--HOME ICON SECTION  -->
	<section id="home-icons" class="py-5">
		<div class="container">
			<div class="row">
				<div class="col-md-4 mb-4 text-center">
					<i class="fas fa-male fa-3x mb-2"></i>
					<h3>Be In Proper Shape</h3>
					<p>Health is not a size , Its a lifestyle.</p>
				</div>
				<div class="col-md-4 mb-4 text-center">
					<i class="fas fa-heartbeat fa-3x mb-2"></i>
					<h3>Stay Fit, Stay Healthy</h3>
					<p>Stay healthy, your body and mind will automatically healthy.</p>
				</div>
				<div class="col-md-4 mb-4 text-center">
					<i class="fas fa-hand-holding-heart fa-3x mb-2"></i>
					<h3>Live Life to Fullest</h3>
					<p>Take care of your body, Love your body.</p>
				</div>
			</div>
		</div>
	</section>

	<!-- VIDEO PLAY -->
	<section id="video-play">
		<div class="dark-overlay">
			<div class="row">
				<div class="col">
					<div class="container p-5">
						<a href="#" class="video" data-video="https://www.youtube.com/embed/wnHW6o8WMas" data-toggle="modal"
							data-target="#videoModal">
							<i class="fas fa-play fa-3x"></i>
						</a><br><br>
						<h1>Get Motivated</h1>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- CONTRIBUTORS -->
	<section id="staff" class="py-5 text-center text-white" style="background-image: linear-gradient(to right, #02aab0, #004e92)">
		<div class="container">
			<h2>Creators & Contributors</h2>
			<hr>
			<div class="row">
				<div class="col-md-3">
					<img src="img/mansi.jpg" alt="" class="img-fluid rounded-circle mb-2" style="height: 200px; width: 200px;">
					<h4>Mansi Singh</h4>
				</div>
				<div class="col-md-3">
					<img src="img/nikhil.jpg" alt="" class="img-fluid rounded-circle mb-2" style="height: 200px; width: 200px;">
					<h4>Nikhil Bagga</h4>
				</div>
				<div class="col-md-3">
					<img src="img/neelesh.jpg" alt="" class="img-fluid rounded-circle mb-2" style="height: 200px; width: 200px;">
					<h4>Neelesh Vashist</h4>
				</div>
				<div class="col-md-3">
					<img src="img/prithul.jpg" alt="" class="img-fluid rounded-circle mb-2" style="height: 200px; width: 200px;">
					<h4>Prithul</h4>
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


	<!-- VIDEO MODAL -->
	<div class="modal fade" id="videoModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<button class="close" data-dismiss="modal">
						<span>&times;</span>
					</button>
					<iframe src="" frameborder="0" height="315" width="100%" allowfullscreen></iframe>
				</div>
			</div>
		</div>
	</div>



	<script src="http://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous">
	</script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
		integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous">
	</script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.min.js"></script>

	<script>
		// Get the current year for the copyright
		$('#year').text(new Date().getFullYear());

		// Configure Slider
		$('.carousel').carousel({
			interval: 6000,
			pause: 'hover'
		});

		// Lightbox Init
		$(document).on('click', '[data-toggle="lightbox"]', function (event) {
			event.preventDefault();
			$(this).ekkoLightbox();
		});

		// Video Play
		$(function () {
			// Auto play modal video
			$(".video").click(function () {
				var theModal = $(this).data("target"),
					videoSRC = $(this).attr("data-video"),
					videoSRCauto = videoSRC + "?modestbranding=1&rel=0&controls=0&showinfo=0&html5=1&autoplay=1";
				$(theModal + ' iframe').attr('src', videoSRCauto);
				$(theModal + ' button.close').click(function () {
					$(theModal + ' iframe').attr('src', videoSRC);
				});
			});
		});
	</script>
</body>

</html>