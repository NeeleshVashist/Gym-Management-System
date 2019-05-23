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
	<title>Performance</title>
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
					<!-- <li class="nav-item">
						<a href="create-user.jsp" class="nav-link"><i class="fas fa-user-plus"></i> Add Admin/Customer</a>
					</li> -->
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
					<h1>Customers List</h1>
					<p>List of Customers</p>
				</div>
			</div>
		</div>
    </header>
    
    <br>

    <div class="container" style="text-align:center; padding-top: 10px; margin-bottom: 150px;">
	
		<div class="row">
			<div class="col-sm-6">
				<form action="GymController" method="get" class="form-horizontal" style="padding: 10px 0 10px 0;">
					<div class="input-group">
						<input type="hidden" class="form-control" name="COMMAND" value="SEARCH"/>			    
						<input type="text" class="form-control" placeholder="Search using mobile no." name="theSearchName">
						<div class="input-group-append">
							<%-- <c:url var="searchLink" value="GymController">
								<c:param name="COMMAND" value="SEARCH"/>
							</c:url> --%>
							<button type="submit" class="btn btn-style" value="Search"><%-- <a href="${searchLink}" style="color: #ffffff; text-decoration: none;">Go</a> --%>Go</button> 
						</div>
					</div>
				</form>	
			</div>
			
			<div class="col-sm-6" style="padding: 10px 15px 10px 15px;">
				<%-- <c:url var="checkLink" value="GymController">
					<c:param name="COMMAND" value="CHECK"/>
				</c:url>
				<a href="${checkLink}" class="btn btn-style btn-block" style="color: #ffffff; text-decoration: none;">Add Customer</a> --%>
				<a href="create-user.jsp" class="btn btn-style btn-block" style="color: #ffffff; text-decoration: none;"><i class="fas fa-user-plus"></i> Add Admin/Customer</a>
			</div>
		</div>  
	  	
	    <br>
		
		<div class="table-responsive">
			<table class="table table-hover">
				<thead style="background-image: linear-gradient(to right, #02aab0, #00cdac); color:#ffffff">
					<tr>
						<th>Customer Name</th>
						<th>Mobile No.</th>
						<th>Package Name</th>
						<th>Options</th>
					</tr>
				</thead>
				
				<tbody>
                    <c:forEach var="tempCustomer" items="${ GYM_LIST }">
						<c:url var="fullDetailLink" value="GymController">
							<c:param name="COMMAND" value="LOAD"/>
							<c:param name="serialNo" value="${tempCustomer.serialNo }"/>
						</c:url>
						<c:url var="deleteLink" value="GymController">
							<c:param name="COMMAND" value="DELETE"/>
							<c:param name="phoneNumber" value="${tempCustomer.phoneNumber}"/>
						</c:url>
						<tr>
							<td> ${tempCustomer.firstName} </td>
							<td> ${tempCustomer.phoneNumber} </td>
							<td> ${tempCustomer.packageName} </td>
							<td><a href="${fullDetailLink }">Full Details</a> | <a href="${deleteLink }">Delete Customer</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		<br><br>
	</div>

	<br>

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
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

	<script>
		// Get the current year for the copyright
		$('#year').text(new Date().getFullYear());

	</script>
</body>

</html>