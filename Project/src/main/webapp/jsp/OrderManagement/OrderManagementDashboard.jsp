<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
  <%@ page isELIgnored="false" %> 
  


<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/custom.css">
    <script src="js/jquery.js"></script>
    <script src="js/proper.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
	
	<title>SignIn</title>
</head>

<body>
	<div class="container-fluid" style="height: 800px">
		<div class="row" >
			<div class="header">
				<img src="Images/logo.PNG" style="width:12%;margin-left: 2%">
 				<font style="font-family: Good Times; font-size: 230%"><span style="color: white;margin-left: 2%;marg">Automated Barcode Solutions</span></font>
 
 					<div class="navbar">
						<div class="dropdown">
  							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Employee Management</a></button>
  							<div class="dropdown-content">
    							<a href="#">Add Employee</a>
							    <a href="#">Remove Employee</a>
							    <a href="#">Employee Profile</a>
      							<div class="dropdown-divider"></div>
							    <a href="#">Payroll System</a>
							    <a href="#">Time and Attendance System</a>
							    <a href="#">Leaving System</a>
  							</div> 
  						</div>
						<div class="dropdown">
   							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Client Management</a></button>
  							<div class="dropdown-content">
							    <a href="#">Add Client</a>
							    <a href="#">Remove Client</a>
							    <a href="#">Client Profile</a>
      							<div class="dropdown-divider"></div>
							    <a href="#"> a System</a>
							    <a href="#"> b System</a>
							    <a href="#"> c System</a>
 							</div>
 						</div>
					 	<div class="dropdown">
   							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Sales Management</a></button>
 							<div class="dropdown-content">
							    <a href="#">Add Client</a>
							    <a href="#">Remove Client</a>
							    <a href="#">Client Profile</a>
							    <div class="dropdown-divider"></div>
							    <a href="#"> a System</a>
							    <a href="#"> b System</a>
							    <a href="#"> c System</a>
  							</div>
  						</div>
						<div class="dropdown">
   							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Order Management</a></button>
						  	<div class="dropdown-content">
							    <a href="ClientOrder">ClientOrder</a>
							    <a href="SupplierOrder">SupplierOrder</a>
							    
						       	<a href="EditSupplierOrder">Edit Supplier Order</a>
						       	<a href="ViewClientOrder">View Client Orders</a>
						       	<a href="ViewSupplierOrder">View Supplier Orders</a>
						       	<div class="dropdown-divider"></div>
						       	<a href="#"> b System</a>
						       	<a href="#"> c System</a>
						  	</div>
						</div>
						<div class="dropdown">
   							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Inventory Management</a></button>
							<div class="dropdown-content">
							    <a href="#">Add Client</a>
							    <a href="#">Remove Client</a>
							    <a href="#">Client Profile</a>
							    <div class="dropdown-divider"></div>
							    <a href="#"> a System</a>
							    <a href="#"> b System</a>
							    <a href="#"> c System</a>
							</div>
						</div>
						<div class="dropdown">
   							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Payment Management</a></button>
						  	<div class="dropdown-content">
							    <a href="#">Add Client</a>
							    <a href="#">Remove Client</a>
							    <a href="#">Client Profile</a>
						      	<div class="dropdown-divider"></div>
						       	<a href="#"> a System</a>
						       	<a href="#"> b System</a>
						       	<a href="#"> c System</a>
						  	</div>
						</div>
						<div class="dropdown">
  				 			<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Fault Management</a></button>
  							<div class="dropdown-content">
							    <a href="#">Add Client</a>
							    <a href="#">Remove Client</a>
							    <a href="#">Client Profile</a>
      							<div class="dropdown-divider"></div>
							    <a href="#"> a System</a>
							    <a href="#"> b System</a>
							    <a href="#"> c System</a>
  							</div>
  						</div>
						<div class="dropdown">
   							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Visitor Management</a></button>
  							<div class="dropdown-content">
							    <a href="#">Add Client</a>
							    <a href="#">Remove Client</a>
							    <a href="#">Client Profile</a>
      							<div class="dropdown-divider"></div>
							    <a href="#"> a System</a>
							    <a href="#"> b System</a>
							    <a href="#"> c System</a>
  							</div>
  						</div>
				</div>
			</div>
			
		</div>
		<div>
				<div class="table-responsive">
			<h2 align="center" style="margin-top: 2%">Client Orders Summary</h2>
				<table id="t01" class="table table-striped table-bordered">
					<tr><th>Month</th><th>Orders</th>
					
					<c:forEach var="employee" items="${list}">
					<tr>
						<td> ${employee.month}</td>
						<td> ${employee.count}</td>
						
						
					</tr>
				</c:forEach>
					
				</table>
			</div>
		</div>
		<div>
			<canvas id="myChart"></canvas>
		</div>
		<div>
			<div class="table-responsive">
			<h2 align="center" style="margin-top: 2%">Latest Client Orders</h2>
				<table id="t01" class="table table-striped table-bordered">
					<tr><th>OrderID</th><th>ClientID</th><th>Location</th><th>Item</th><th>Quantity</th>
					<th>Expected date</th><th>Payment type</th><th>Delivery type</th><th>Description</th>
					
					
					<c:forEach var="employee1" items="${list1}">
					<tr>
						<td> ${employee1.oid}</td>
						<td> ${employee1.id}</td>
						<td> ${employee1.location}</td>
						<td> ${employee1.item}</td>
						<td> ${employee1.quantity}</td>
						<td> ${employee1.exdate}</td>
						<td> ${employee1.paytyp}</td>
						<td> ${employee1.deltyp}</td>
						<td> ${employee1.description}</td>
						
					</tr>
				</c:forEach>
					
				</table>
			</div>
		</div>
	</div>
	
	<div style="padding-top:200px">
		
	</div>
  
  <footer class="page-footer" style="background-color:#5c5d60;" >
	<div class="footer-copyright text-center py-3">Copyright © 2018  Automated Barcode Solutions (Pvt) Ltd . All rights reserved </a></div>
  </footer>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<script type="text/javascript">
	var ctx = document.getElementById('myChart').getContext('2d');
	var chart = new Chart(ctx, {
	    // The type of chart we want to create
	    type: 'bar',
	
	    // The data for our dataset
	    data: {
	        labels: ['${list[0].month}', '${list[1].month}', '${list[2].month}', '${list[3].month}', '${list[4].month}', '${list[5].month}'],
	        datasets: [{
	            label: "My First dataset",
	            backgroundColor: 'rgb(255, 99, 132)',
	            borderColor: 'rgb(255, 99, 132)',
	            data: ['${list[0].count}', '${list[1].count}', '${list[2].count}', '${list[3].count}', '${list[4].count}', '${list[5].count}'],
	        }]
	    },
	
	    // Configuration options go here
	    options: {}
	});
</script>
</html>