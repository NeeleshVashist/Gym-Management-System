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
	<title>Create New User</title>
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
					<h1>Add User</h1>
					<p>Add New Admin/Customer</p>
				</div>
			</div>
		</div>
    </header>

    <!-- CONTACT SECTION -->
	<section id="contact" class="py-3">
		<div class="container">
			<div id="loginFormDesign" class="card bg-light mb-3">
				<div class="card-body" style="background-color: #ffffff;">
					<form class="loginform" action="UserController" method="post">
						<input type="hidden" name="command" value="ADD" />
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
							<label for="inputName">User First Name</label> 
							<div class="input-group mb-3">
	                            <div class="input-group-append">
	                                <span class="input-group-text iconFront" style="border-radius: .25rem 0 0 .25rem;"><i class="fas fa-signature"></i></span>
	                            </div>
							<input type="text" name="userName" class="form-control" id="inputID" placeholder="Enter only first name" required="required">
	                        </div>
						</div>
	
						<div class="form-group">
							<label for="inputID">Mobile No(User ID)</label> 
							<div class="input-group mb-3">
	                            <div class="input-group-append">
	                                <span class="input-group-text iconFront" style="border-radius: .25rem 0 0 .25rem;"><i class="fas fa-user"></i></span>
	                            </div>
							<input type="tel" name="userId" class="form-control" id="inputID" pattern="(7|8|9)\d{9}" placeholder="Must start with 6,7,8 or 9 and of 10 digits" required="required">
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
					
						<div class="form-group">
							<label for="inputType">Type: </label>
							<select class="form-control" id="inputType" name="type">
								<option>customer</option>
								<option>admin</option>
							</select>
						</div>
	
						<br>
	
						<button type="submit" class="btn btn-style btn-block"><i class="fas fa-sign-in-alt"></i> Add Member</button>
	
	                </form>
	                
	                <br>
				
	                <div style="text-align:center;">
						<c:url var="listLink" value="GymController">
							<c:param name="COMMAND" value="LIST"/>
						</c:url>
						<button  class="btn btn-link" type="submit"><a href="${listLink}">Back to List</a></button>
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