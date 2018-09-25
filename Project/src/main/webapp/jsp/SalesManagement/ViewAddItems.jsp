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
<link rel="stylesheet" href="/css/glyphican.css">
<link rel="stylesheet" href="/css/custom.css">
<script src="js/jquery.js"></script>
<script src="js/proper.js"></script>
<script src="js/bootstrap.js"></script>

<style>
table {
    border-collapse: collapse;
    width: 50%;
}

th {
    background-color: #0171a1;
    color: white;
}


th, td {
    text-align: center;
    padding: 8px;
}



tr:nth-child(odd) {background-color: #9fc1cf;}
tr:hover {background-color:#2bb2cf;}
</style>

<title>View Added Items</title>


</head>

<body>
	<div class="container-fluid" style="height: 1200px">
		<div class="row">
			<div class="header">
				<img src="/Images/logo.png" style="width: 12%; margin-left: 2%">
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
								type="button" value="+ Add more Items"
									class="btn btn-primary btn-sm" onclick="window.location.href='/additems/${additems.installationID}'">
									                               
							</div>
						</div>
					</div>
		
		
		
		

		<h2 align="center">	Installation ID: ${additems.installationID} - Added Items </h2>
			
			
			<form:form>
			<div class="table-responsive">


				<table id="icTable02" border="0px" align="center" width="50%">
					<tr align="center">
						<th>Device</th>
						<th>Quantity</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>

					<c:forEach var="additems" items="${list}">
						<tr align="center">
							<td>${additems.devicesCode}</td>
							<td>${additems.quantity}</td>

						
			
			
			
			
			
			
			
			
				 <!-- Edit -->
							<td><a href="/editins/${additems.installationID}"><span class="glyphicon glyphicon-pencil"></span></a></td>

							<!-- Delete -->
							<td><a href="/deleteinstallationcertificate/${additems.installationID}"><span class="glyphicon glyphicon-trash"></span></a></td>				
			
			
			</tr>
			
			
			
			
					</c:forEach>

				</table>
				



		</form:form><br>
	
						
						
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