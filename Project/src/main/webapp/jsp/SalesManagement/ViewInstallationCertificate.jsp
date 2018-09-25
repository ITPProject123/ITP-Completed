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

<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="css/glyphican.css">
<link rel="stylesheet" href="/css/custom.css">
<script src="js/jquery.js"></script>
<script src="js/proper.js"></script>
<script src="js/bootstrap.js"></script>
<style>
table {
    border-collapse: collapse;
    
}

th {
    background-color: #0171a1;
    color: white;
}


th, td {
    text-align: center;
    padding: 2px;
}



tr:nth-child(odd) {background-color: #9fc1cf;}
tr:hover {background-color:#2bb2cf;}
</style>

<title>View Installation Certificates</title>
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
<div class="row"  align="right">
						<div  class="col text-center">
							<div  align="right" style="width:40%;margin-left: 60%;">
								<input 
								type="button" value="Sales Details"
									class="btn btn-primary btn-sm" onclick="window.location.href='/viewsalesdetails'" >
									
							</div>
						</div>
					</div>
		<h1 align="center">Installation Certificates</h1>
		<br>
		<form:form>
			<div class="table-responsive">



				<h5>
					<!-- Add New  -->
					<a href="viewsalesdetails"><span class="glyphicon glyphicon-plus"></span> Add New</a>
				</h5>





				<table id="icTable01" border="1px">
					<tr align="center">
						<th>IC ID</th>
						<th>Order ID</th>
						<th>Client ID</th>
						<th>Technician ID</th>
						<th>Driver ID</th>
						<th>Cable Length(m)</th>
						<th>Conduit Length(m)</th>
						<th>SW Installed</th>
						<th>SWIn. Description</th>
						<th>Opt. Trainee Provided</th>
						<th>OTProv. Description</th>
						<th>System Fully Opt</th>
						<th>SFOpt. Description</th>
						<th>Time In</th>
						<th>Time Out</th>
						<th style="width:20%;" >Date Installed</th>
						<th>Edit</th>
						<th>Delete</th>
						<th>Add Items</th>
						<th>View Items</th>
					</tr>

					<c:forEach var="installationcertificate" items="${list}">
						<tr align="center">
							<td>${installationcertificate.installationCode}</td>
							<td>${installationcertificate.ordId}</td>
							<td>CLI${installationcertificate.clienId}</td>
							<td>${installationcertificate.techId}</td>
							<td>${installationcertificate.drivId}</td>
							<td>${installationcertificate.cableLen}</td>
							<td>${installationcertificate.conduitLen}</td>
							<td>${installationcertificate.swInstalled}</td>
							<td>${installationcertificate.swInstalledDescription}</td>
							<td>${installationcertificate.opTraining}</td>
							<td>${installationcertificate.opTrainingDescription}</td>
							<td>${installationcertificate.fullyOperational}</td>
							<td>${installationcertificate.fullyOperationalDescription}</td>
							<td>${installationcertificate.timeIn}</td>
							<td>${installationcertificate.timeOut}</td>
							<td>${installationcertificate.dateInstalled}</td>



							<!-- Edit By ID-->
							<td><a href="/editins/${installationcertificate.installationID}"><span class="glyphicon glyphicon-pencil"></span></a></td>

							<!-- Delete By ID-->
							<td><a href="/deleteinstallationcertificate/${installationcertificate.installationID}"><span class="glyphicon glyphicon-trash"></span></a></td>


							<!-- Add Items-->
							<td><a href="/additems/${installationcertificate.installationID}"><span class="glyphicon glyphicon-plus"></span></a></td>

							<!-- View Items -->
							<td><a href="/viewadditems/${installationcertificate.installationID}"><span class="glyphicon glyphicon-th-list"></span></a></td>


						</tr>
					</c:forEach>

				</table>
				<br>
				<!-- Delete All-->
				<h5 align="right">
					<a href="/delete/${installationcertificate.installationID}"><span class="glyphicon glyphicon-trash"></span>  Delete All Installation Certificates</a>
				</h5>
			</div>


		</form:form>

	</div>


	<footer class="page-footer" style="background-color: #5c5d60;">
		<div class="footer-copyright text-center py-3">
			Copyright © 2018 Automated Barcode Solutions (Pvt) Ltd . All rights
			reserved </a>
		</div>
	</footer>

</body>
</html>