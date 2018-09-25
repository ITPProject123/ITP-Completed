<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<script src="js/jquery.js"></script>
<script src="js/proper.js"></script>
<script src="js/bootstrap.js"></script>

<title>View Client Orders 2</title>
</head>

<body>
	<div class="container-fluid" style="height: 1700px">
		<div class="row">
			<div class="header">
				<img src="Images/logo.png" style="width: 12%; margin-left: 2%">
				<font style="font-family: Good Times; font-size: 230%"><span
					style="color: white; margin-left: 2%;">Automated Barcode
						Solutions</span></font>

				<div class="navbar">
					<div class="dropdown">
						<button class="dropbtn dropdown-toggle">
							<a href="#" style="color: black; text-decoration: none;">Employee
								Management</a>
						</button>
						<div class="dropdown-content">
							<a href="#">Add Employee</a> <a href="#">Remove Employee</a> <a
								href="#">Employee Profile</a>
							<div class="dropdown-divider"></div>
							<a href="#">Payroll System</a> <a href="#">Time and
								Attendance System</a> <a href="#">Leaving System</a>
						</div>
					</div>
					<div class="dropdown">
						<button class="dropbtn dropdown-toggle">
							<a href="#" style="color: black; text-decoration: none;">Client
								Management</a>
						</button>
						<div class="dropdown-content">
							<a href="#">Add Client</a> <a href="#">Remove Client</a> <a
								href="#">Client Profile</a>

							<div class="dropdown-divider"></div>
							<a href="#"> a System</a> <a href="#"> b System</a> <a href="#">
								c System</a>
						</div>
					</div>
					<div class="dropdown">
						<button class="dropbtn dropdown-toggle">
							<a href="#" style="color: black; text-decoration: none;">Sales
								Management</a>
						</button>
						<div class="dropdown-content">
							    <a href="salesdashbord">Sales Dash Board</a>
							    <a href="viewclientorders">Today Orders</a>
							    <a href="viewclientorders2">Orders For Range</a>
							    <a href="viewsalesdetails">Sales Details</a>
							    <a href="viewinstallationcertificate">Installation Certificates</a>
  							</div>
					</div>
					<div class="dropdown">
						<button class="dropbtn dropdown-toggle">
							<a href="#" style="color: black; text-decoration: none;">Order
								Management</a>
						</button>
						<div class="dropdown-content">
							<a href="#">Add Client</a> <a href="#">Remove Client</a> <a
								href="#">Client Profile</a>
							<div class="dropdown-divider"></div>
							<a href="#"> a System</a> <a href="#"> b System</a> <a href="#">
								c System</a>
						</div>
					</div>
					<div class="dropdown">
						<button class="dropbtn dropdown-toggle">
							<a href="#" style="color: black; text-decoration: none;">Inventory
								Management</a>
						</button>
						<div class="dropdown-content">
							<a href="#">Add Client</a> <a href="#">Remove Client</a> <a
								href="#">Client Profile</a>
							<div class="dropdown-divider"></div>
							<a href="#"> a System</a> <a href="#"> b System</a> <a href="#">
								c System</a>
						</div>
					</div>
					<div class="dropdown">
						<button class="dropbtn dropdown-toggle">
							<a href="#" style="color: black; text-decoration: none;">Payment
								Management</a>
						</button>
						<div class="dropdown-content">
							<a href="#">Add Client</a> <a href="#">Remove Client</a> <a
								href="#">Client Profile</a>
							<div class="dropdown-divider"></div>
							<a href="#"> a System</a> <a href="#"> b System</a> <a href="#">
								c System</a>
						</div>
					</div>
					<div class="dropdown">
						<button class="dropbtn dropdown-toggle">
							<a href="#" style="color: black; text-decoration: none;">Fault
								Management</a>
						</button>
						<div class="dropdown-content">
							<a href="#">Add Client</a> <a href="#">Remove Client</a> <a
								href="#">Client Profile</a>
							<div class="dropdown-divider"></div>
							<a href="#"> a System</a> <a href="#"> b System</a> <a href="#">
								c System</a>
						</div>
					</div>
					<div class="dropdown">
						<button class="dropbtn dropdown-toggle">
							<a href="#" style="color: black; text-decoration: none;">Visitor
								Management</a>
						</button>
						<div class="dropdown-content">
							<a href="#">Add Client</a> <a href="#">Remove Client</a> <a
								href="#">Client Profile</a>
							<div class="dropdown-divider"></div>
							<a href="#"> a System</a> <a href="#"> b System</a> <a href="#">
								c System</a>
						</div>
					</div>
				</div>
			</div>
		</div>



		<br>

		<h1 align="center">Check Order for a  Range</h1>



<form:form method="POST" modelAttribute="range"
					class="form-horizontal" action="getrange" id="clientform1">




	<div class="form-group row"
						style="margin-left: 32%; margin-top: 2%">
						<label style="width: 200px" for="range_1">From</label>
						<div class="col-sm-4" style="margin-left: 0%;">
							<form:input type="date" class="form-control" id="range_1" name="range_1"
								path="range_1" />
							<div class="has-error">
								<form:errors path="range_1" class="help-inline" />
							</div>
						</div>
					</div>

<div class="form-group row"
						style="margin-left: 32%; margin-top: 2%">
						<label style="width: 200px" for="range_2">To</label>
						<div class="col-sm-4" style="margin-left: 0%;">
							<form:input type="date" class="form-control" id="range_2" name="range_2"
								path="range_2" />
							<div class="has-error">
								<form:errors path="range_2" class="help-inline" />
							</div>
						</div>
					</div>



					<div class="row" style="margin-left: 38%;width:40%;">
						<div class="col text-center">
							<div class="form-actions ">
								<input type="submit" value="Check Orders"
									class="btn btn-primary btn-sm">
							</div>
						</div>
					</div>
					
					
					
					
					

				</form:form>












			</div>
	</div>


	<footer class="page-footer" style="background-color: #5c5d60;">
		<div class="footer-copyright text-center py-3">
			Copyright © 2018 Automated Barcode Solutions (Pvt) Ltd . All rights
			reserved </a>
		</div>
	</footer>

</body>
</html>