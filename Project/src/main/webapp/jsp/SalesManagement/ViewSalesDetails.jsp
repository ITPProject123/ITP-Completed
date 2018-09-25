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
<link rel="stylesheet" href="css/glyphican.css">
<link rel="stylesheet" href="css/custom.css">
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
    padding: 4px;
}



tr:nth-child(odd) {background-color: #9fc1cf;}

</style>

<title>View Sales Details</title>
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
		<br>
		<div class="row"  align="right">
						<div  class="col text-center">
							<div  align="right" style="width:40%;margin-left: 60%;">
								<input 
								type="button" value="Today Orders"
									class="btn btn-primary btn-sm" onclick="window.location.href='/viewclientorders'" >
									
							</div>
						</div>
					</div>
					
				<br>	
					
					<div class="row"  align="right">
						<div  class="col text-center">
							<div  align="right" style="width:40%;margin-left: 60%;">
								<input 
								type="button" value="Installation Certificates"
									class="btn btn-primary btn-sm" onclick="window.location.href='/viewinstallationcertificate'" >
									
							</div>
						</div>
					</div>

		<h1 align="center">Sales Details</h1>
		<br>
		<form:form>
			<div class="table-responsive">



				


				<table id="salesTable01" border="0px" align="center">
					<tr align="center">
						<th>Sales ID</th>
						<th>Order ID</th>
						<th>Technician  ID</th>
						<th>Driver ID</th>
						<th>Status</th>
						<th>Completed Date</th>
						<th>Total Amount</th>
						<th>Generate Amount</th>
						<th>Change Status</th>
						<th>Installation Certificate</th>
						<th>Payment</th>
						<th>Remove</th>
						
					
					</tr>
	
					
					

					<c:forEach var="sales" items="${list}">
						<tr align="center">
							<td>${sales.salesCode}</td>
							<td>${sales.orID}</td>
							<td>${sales.techID}</td>
							<td>${sales.driverID}</td>
							<td>${sales.status}</td>
							<td>${sales.dateCompleted}</td>
							<td>Rs.${sales.totalAmount}</td>
							
						<!-- Generate Amount By ID-->
						<td>
								<div>
									<input style="border-radius: 10px;background-color: #4286f4;color: white;" type="button" value="Generate Amount"  onclick="window.location.href='/generateamount/${sales.salesID}'" >	
								</div>
							
						</td>
						
							<!-- Change the Status  By ID-->
						
						<td>
						 		<div >
									<input style="border-radius: 10px;background-color: #4286f4;color: white;" type="button" value="Completed"  onclick="window.location.href='/updatestatuscom/${sales.salesID}'" >	
								
									<input style="border-radius: 10px;background-color: #4286f4;color: white;" type="button" value="Reset"  onclick="window.location.href='/updatestatuspen/${sales.salesID}'" >	
								</div>
						</td>


							
							<!-- InsatallationCertificate-->
							<td><a href="/installationcertificate/${sales.salesID}"><span class="glyphicon glyphicon-list-alt"></span>  </a></td>
							
							<!-- Proceed to payment-->
							<td><a href="//${sales.salesID}"><span class="glyphicon glyphicon-usd"></span>  </a></td>


							<!-- Remove Sales Details-->
							<td><a href="/deletesalesbyId/${sales.salesID}"><span class="glyphicon glyphicon-trash"></span>  </a></td>

							
							
							
							
				
		</tr>
					</c:forEach>

				</table>
				
				
				
				<br>
				<!-- Delete All-->
				<h5 align="right">
					<a href="/deleteall/${sales.salesID}">Delete All Sales Details</a>
				</h5>
				<br>
				
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