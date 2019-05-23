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
	<title>Update Customer</title>
</head>

<body>

<%	
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires", "0");
	
	if(session.getAttribute("userName") == null) {
		response.sendRedirect("login.jsp");
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
					<h1>Update Customer</h1>
					<p>Update customer details</p>
				</div>
			</div>
		</div>
    </header>
    
    <br>

    <div class="container" style="max-width: 800px; box-shadow: 5px 10px 18px #888888;">
		
		<br>
		
		<div>
			<form action="GymController" method="get">
				<input type="hidden" name="COMMAND" value="UPDATE">
				<input type="hidden" name="serialNo" value="${GYM.serialNo}">
				
				<h4><p style="text-align:center; background-color: #cc6e00; padding: 10px; color: #ffffff; margin: auto 0px; border-radius: 0.25rem;">General Details</p></h4>

				<div class="form-group">
					<label for="inputFirstName">First Name: </label>
					<input type="text" id="inputFirstName" name="firstName" value="${GYM.firstName}" placeholder="First Name" class="form-control" required="required" readonly>	
				</div>
				
				<div class="form-group">
					<label for="inputLastUnit">Last Name: </label>
					<input type="text" id="inputLastUnit" name="lastName" value="${GYM.lastName}" placeholder="Last Name" class="form-control" required="required" readonly>
				</div>
				
				<div class="form-group">
					<label for="inputMobNo">Mobile Number: </label>
					<input type="tel" id="inputMobNo" pattern="(6|7|8|9)\d{9}" name="phoneNumber" value="${GYM.phoneNumber}" placeholder="Eg. 90090090000" class="form-control" required="required" readonly>
				</div>
				
				<div class="form-group">
					<label for="inputAge">Age: </label>
					<input type="number" id="inputAge" min="16" max="50" name="age" value="${GYM.age}" placeholder="Age" class="form-control" required="required">
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
					<input type="text" id="inputAddress" name="address" value="${GYM.address}" placeholder="Address" class="form-control" required="required">
				</div>

				<div class="form-group">
					<label for="inputCity">City: </label>
					<input type="text" id="inputCity" name="city" value="${GYM.city}" placeholder="City" class="form-control" required="required">
				</div>

				<div class="form-group">
					<label for="inputState">State: </label>
					<input type="text" id="inputState"  name="state" value="${GYM.state}" placeholder="State" class="form-control" required="required">
				</div>

				<div class="form-group">
					<label for="inputPinCode">Pin Code: </label>
					<input type="text" id="inputPinCode" name="pinCode" value="${GYM.pinCode}" placeholder="Pin Code" class="form-control" required="required">
				</div>
				
				<hr style="margin: 30px auto;">

				<h4><p style="text-align:center; background-color: #005a86; padding: 10px; color: #ffffff; margin: auto 0px; border-radius: 0.25rem;">Health Details</p></h4>

				<div class="form-group">
					<label for="inputHeight">Height: </label>
					<input type="number" step="any" id="inputHeight" min="1" max="250" name="height" value="${GYM.height}" placeholder="Height in cm only" class="form-control" required="required">
				</div>

				<div class="form-group">
					<label for="inputWeight">Weight: </label>
					<input type="number" step="any" id="inputWeight" min="1" max="150" name="weight" value="${GYM.weight}" placeholder="Weight in kg only" class="form-control" required="required">
				</div>

				<div class="form-group">
					<label for="inputBMI">BMI: </label>
					<input type="number" step="any" id="inputBMI" name="bmi" min="1" max="50" value="${GYM.bmi}" placeholder="Can't be greater than 50" class="form-control" required="required">
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
				
				<%-- <div class="form-group">
					<label for="inputPackageId">Package ID: </label>
					<input type="number" id="inputPackageId" name="packageId" value="${GYM.packageId}" placeholder="Package ID" class="form-control" required="required">
				</div> --%>

				<%-- <div class="form-group">
					<label for="inputPackageName">Package Name: </label>
					<input type="text" id="inputPackageName" name="packageName" value="${GYM.packageName}" placeholder="Package Name" class="form-control" required="required">
				</div> --%>

				<%-- <div class="form-group">
					<label for="inputPackageRate">Package Rate: </label>
					<input type="number" step="any" id="inputPackageRate" min="0" max="20000" name="rateOfPackage" value="${GYM.rateOfPackage}" placeholder="Package Rate" class="form-control" required="required">
				</div> --%>

				<div class="form-group">
					<label for="inputDOM">Date Of Joining: </label>
					<input type="date" id="inputDOM" name="dateOfJoining" value="${GYM.dateOfJoining}" placeholder="Date Of Joining" class="form-control" required="required">
				</div>
				
				<div class="form-group">
					<label for="inputDOE">Date Of Expiry: </label>
					<input type="date" id="inputDOE" name="dateOfExpiry" value="${GYM.dateOfExpiry}" placeholder="Date Of Expiry" class="form-control" required="required">
				</div>		
				
				<br>
				
				<div class="row">
					<div class="col text-center">
				        <input type="submit" value="Update Details" class="btn btn-style btn-block">
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