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
	<title>Add Customer</title>
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
					<h1>Add Customer</h1>
					<p>Add new customer details</p>
				</div>
			</div>
		</div>
    </header>
    
    <br>

    <div class="container" style="max-width: 800px; box-shadow: 5px 10px 18px #888888;">
		
		<br>
		
		<div>
			<form action="GymController" method="get">
			
				<input type="hidden" name="COMMAND" value="ADD">
				
				
				<% 
				
					String userId=request.getParameter("userId");
					String userName=request.getParameter("userName");
				
				%>
				
				
				<h4><p style="text-align:center; background-color: #cc6e00; padding: 10px; color: #ffffff; margin: auto 0px; border-radius: 0.25rem;">General Details</p></h4>

				<div class="form-group">
					<label for="inputFirstName">First Name: </label>
					<input type="text" id="inputFirstName" value=<% out.println(userName); %> placeholder="First Name" name="firstName" class="form-control" required="required" readonly>	
				</div>
				
				<div class="form-group">
					<label for="inputLastUnit">Last Name: </label>
					<input type="text" id="inputLastUnit" placeholder="Last Name" name="lastName" class="form-control" required="required">
				</div>
				
				<div class="form-group">
					<label for="inputMobNo">Mobile Number: </label>
					<input type="tel" id="inputMobNo" pattern="(6|7|8|9)\d{9}" value=<% out.println(userId); %> name="phoneNumber" placeholder="Eg. 90090090000" class="form-control" required="required" readonly>
				</div>
				
				<div class="form-group">
					<label for="inputAge">Age: </label>
					<input type="number" id="inputAge" min="16" max="50" placeholder="Age" name="age" class="form-control" required="required">
				</div>
				
				<div class="form-group">
					<label for="inputGender">Gender: </label>
					<select class="form-control" id="inputGender" name="sex">
						<option>Male</option>
						<option>Female</option>
					</select>
				</div>

				<hr style="margin: 30px auto;">

				<h4><p style="text-align:center; background-color: #1a7e00; padding: 10px; color: #ffffff; margin: auto 0px; border-radius: 0.25rem;">Address Details</p></h4>

				<div class="form-group">
					<label for="inputAddress">Address: </label>
					<input type="text" id="inputAddress" placeholder="Example: House No., Locality"  name="address" class="form-control" required="required">
				</div>

				<div class="form-group">
					<label for="inputCity">City: </label>
					<input type="text" id="inputCity" placeholder="City" name="city" class="form-control" required="required">
				</div>

				<div class="form-group">
					<label for="inputState">State: </label>
					<input type="text" id="inputState" placeholder="State" name="state" class="form-control" required="required">
				</div>

				<div class="form-group">
					<label for="inputPinCode">Pin Code: </label>
					<input type="text" id="inputPinCode" placeholder="Pin Code" name="pinCode" class="form-control" required="required">
				</div>
				
				<hr style="margin: 30px auto;">

				<h4><p style="text-align:center; background-color: #005a86; padding: 10px; color: #ffffff; margin: auto 0px; border-radius: 0.25rem;">Health Details</p></h4>

				<div class="form-group">
					<label for="inputHeight">Height: </label>
					<input type="number" id="inputHeight" min="1" max="250" placeholder="Height in cm only" name="height" class="form-control" required="required">
				</div>

				<div class="form-group">
					<label for="inputWeight">Weight: </label>
					<input type="number" id="inputWeight" min="1" max="150" placeholder="Weight in kg only" name="weight" class="form-control" required="required">
				</div>

				<div class="form-group">
					<label for="inputBMI">BMI: </label>
					<input type="number" id="inputBMI" min="1" max="50" placeholder="BMI" name="bmi" class="form-control" required="required">
				</div>
				
				<hr style="margin: 30px auto;">

				<h4><p style="text-align:center; background-color: #cb0018; padding: 10px; color: #ffffff; margin: auto 0px; border-radius: 0.25rem;">Package Details</p></h4>

				<div class="form-group">
					<label for="inputPackageId">Package ID: </label>
					<select class="form-control" id="inputPackageId" name="packageId">
						<option>01</option>
						<option>02</option>
						<option>03</option>
					</select>
				</div>
				
				<div class="form-group">
					<label for="inputPackageName">Package Name: </label>
					<select class="form-control" id="inputPackageName" name="packageName">
						<option>Package 01</option>
						<option>Package 02</option>
						<option>Package 03</option>
					</select>
				</div>
				
				<div class="form-group">
					<label for="inputPackageRate">Package Rate: </label>
					<select class="form-control" id="inputPackageRate" name="rateOfPackage">
						<option>6000</option>
						<option>10500</option>
						<option>18000</option>
					</select>
				</div>
				
				<!-- <div class="form-group">
					<label for="inputPackageId">Package ID: </label>
					<input type="number" id="inputPackageId" placeholder="Package ID" name="packageId" class="form-control" required="required">
				</div> -->

				<!-- <div class="form-group">
					<label for="inputPackageName">Package Name: </label>
					<input type="text" id="inputPackageName" placeholder="Package Name" name="packageName" class="form-control" required="required">
				</div> -->

				<!-- <div class="form-group">
					<label for="inputPackageRate">Package Rate: </label>
					<input type="number" id="inputPackageRate" min="0" max="20000" placeholder="Package Rate" name="rateOfPackage" class="form-control" required="required">
				</div> -->

				<div class="form-group">
					<label for="inputDOM">Date Of Joining: </label>
					<input type="date" id="inputDOM" placeholder="Date Of Joining" name="dateOfJoining" class="form-control" required="required">
				</div>
				
				<div class="form-group">
					<label for="inputDOE">Date Of Expiry: </label>
					<input type="date" id="inputDOE" placeholder="Date Of Expiry" name="dateOfExpiry" class="form-control" required="required">
				</div>		
				
				<br>
				
				<div class="row">
					<div class="col text-center">
				        <input type="submit" value="Add Member" class="btn btn-style btn-block">
					</div>
				</div>
					
			</form>
			
			<br>
			
			<div style="text-align:center; padding-bottom: 20px; margin-bottom: 25px;">
				<c:url var="listLink" value="GymController">
					<c:param name="COMMAND" value="LIST"/>
				</c:url>
				<button  class="btn btn-link" type="submit"><a href="${listLink}">Back to List</a></button>
			</div>
		</div>
		
	</div>

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