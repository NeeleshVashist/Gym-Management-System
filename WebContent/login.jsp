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
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css" />
	<link rel="stylesheet" href="css/style.css">
	<title>Login Panel</title>
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
					<li class="nav-item">
						<a href="services.jsp" class="nav-link"><i class="fas fa-info-circle"></i> Services</a>
					</li>
					<li class="nav-item active">
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
					<h1>Login Panel</h1>
				</div>
			</div>
		</div>
	</header>

	<!-- CONTACT SECTION -->
	<section id="contact" class="py-3" style="margin-bottom: 100px;">
		<div class="container">
			<div id="loginFormDesign" class="card bg-light mb-3">
				<div class="card-body" style="background-color: #ffffff;">
					
					<form class="loginform" action="UserController" method="post">
						
						<input type="hidden" name="command" value="USER" />
						
						<div class="form-group"> 
						<% 
							String str=(String)request.getAttribute("msg");
						%><%
						if(str!=null){
						%> 
							<h4 style="color: green; text-align: center;"> <%=str%></h4>
						<%
						}
						%>
						</div>
						
						<div class="form-group">
							<label for="inputID">Mobile No</label> 
							<div class="input-group mb-3">
	                            <div class="input-group-append">
	                                <span class="input-group-text iconFront" style="border-radius: .25rem 0 0 .25rem;"><i class="fas fa-user"></i></i></span>
	                            </div>
							<input type="text" name="userId" pattern="(6|7|8|9)\d{9}" class="form-control" id="inputID" placeholder="Mobile No" required="required">
	                        </div>
						</div>
						
						<div class="form-group">
							<label for="inputPassword">Password</label> 
							<div class="input-group mb-3">
	                            <div class="input-group-append">
	                                <span class="input-group-text iconFront" style="border-radius: .25rem 0 0 .25rem;"><i class="fas fa-key"></i></span>
	                            </div>
							<input type="password" name="password" class="form-control" id="inputPassword" placeholder="Password" required="required">
	                        </div>
						</div>
						
						
						<%-- <c:url var="fullDetailLink" value="UserController">
							<c:param name="serialNo" value="${userId }"/>
						</c:url>
						
						<button type="submit" class="btn btn-style btn-block"><a href="${fullDetailLink}" style="color: #ffffff; text-decoration: none;">Login</a></button> --%>
						
						
	
						<button type="submit" class="btn btn-style btn-block"><i class="fas fa-sign-in-alt"></i> Login</button>
	
					</form>
				</div>
			</div>
		</div>
	</section>

	<!-- FOOTER -->
	<footer id="main-footer" class="text-center p-4" style="position: fixed; left: 0; bottom: 0; width: 100%;">
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