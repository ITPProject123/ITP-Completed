<%@page import="com.example.demo.controller.SalesManagement.SalesDashBoardController"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/custom.css">
	<script src="js/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
	<script src="js/Chart.bundle.min.js"></script>
	 	
	<title>Sales Dash Board</title>
</head>

<body>
	<div class="container-fluid" style="height: 1500px">
		<div class="row" >
			<div class="header">
				<img src="Images/logo.png" style="width:12%;margin-left: 2%">
 				<font style="font-family: Good Times; font-size: 230%"><span style="color: white;margin-left: 2%;marg">Automated Barcode Solutions</span></font>
 
 					<div class="navbar">
						<div class="dropdown">
  							<button class="dropbtn dropdown-toggle"><a href="dash" style="color: black;text-decoration: none;">Employee Management</a></button>
  							<div class="dropdown-content">
    							<a href="add">Add Employee</a>
							    <a href="remove">Remove Employee</a>
							    <a href="profile">Employee Profile</a>
      							<div class="dropdown-divider"></div>
							    <a href="payroll">Payroll System</a>
							    <a href="t&a">Time and Attendance System</a>
							    <a href="leave">Leaving System</a>
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
							    <a href="salesdashbord">Sales Dash Board</a>
							    <a href="viewclientorders">Today Orders</a>
							    <a href="viewclientorders2">Orders For Range</a>
							    <a href="viewsalesdetails">Sales Details</a>
							    <a href="viewinstallationcertificate">Installation Certificates</a>
  							</div>
  						</div>
						<div class="dropdown">
   							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Order Management</a></button>
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
<!-- Order Status 01-->	
		<div class="row" style="margin-top: 150px;height: 300px;">
			<div class="col-md-5" style="background-color: rgba(255,255,255,0.8);margin-left: 90px;border-radius: 30px">
				<div id="canvas-holder">
					<canvas id="doughnut-chart-order-staus"></canvas>
				</div>
			</div>
<!-- Order Delivery Type 01-->
			<div class="col-md-5 ml-5" style="background-color: rgba(255,255,255,0.8);border-radius: 30px">
				<div id="canvas-holder" >
					<canvas id="doughnut-chart-delivery-type"></canvas>
				</div>
			</div>
		</div>
		

<!-- Buttons 		
		<div class="row" style="margin-top:120px">
			<div class="col text-center">
				<button id="line" class="btn btn-primary" style="width: 200px">Generate Line Chart</button>
	  			<button id="bar" class="btn btn-primary" style="width: 200px">Generate Bar Chart</button>
				<button id="pie" class="btn btn-primary" style="width: 200px">Generate Pie Chart</button>
			</div>
		</div>
<!-- Other chart  
		<div class="row" style="margin-top:30px;margin-left:260px;height:400px">
			<div class="col-md-9 " style="background-color: rgba(255,255,255,0.8);border-radius: 30px">
				<div id="canvas-holder" >
					<canvas id="chartAttendance"></canvas>
				</div>
			</div>
		</div>
 -->
<!-- Order Status 02-->	
		<script type="text/javascript">

			new Chart(document.getElementById("doughnut-chart-order-staus"), 
			{
    			type: 'doughnut',
    			data: 
    			{
      				labels: ["Completed", "Pending"],
      				datasets: 
      				[
        			{
          				label: "Total",
				        backgroundColor: ["#3e95cd", "#8e5ea2"],
				        data: [<%=SalesDashBoardController.Doughnut_chartX()%>,<%=SalesDashBoardController.Doughnut_chartY()%>]
        			}
      				]
    			},
    			
    			options: 
    			{
      				legend: 
      				{ 
      					display: true,
    	  				position:'bottom'
    	  			},
      				title: 
      				{
        				display: true,
        				text: 'Today Orders',
        				fontSize:20,
        				fontStyle:'italic'
      				}
    			}
			})

		</script>
<!-- Order Delivery Type 02-->
		<script type="text/javascript">

		new Chart(document.getElementById("doughnut-chart-delivery-type"), 
		{
    		type: 'doughnut',
    		data: 
    		{
      			labels: ["By Technician","By Driver"],
      			datasets: 
      			[
        		{
		          label: "Total",
		          backgroundColor: ["#008B8B", "#DA70D6"],
		          data: [<%=SalesDashBoardController.Doughnut_chartA()%>,<%=SalesDashBoardController.Doughnut_chartB()%>]
        		}
      			]
    		},
    		options: 
    		{
      			legend: 
      			{ 
      				display: true,
      				position:'bottom' 
      			},
      			title: 
      			{
			        display: true,
			        text: 'Order Delivery Type',
			        fontSize:20,
			        fontStyle:'italic'
      			}
    		}
    	})

		</script>
		
	
	
	
	</div>
 
 	<footer class="page-footer" style="background-color:#5c5d60;">
		<div class="footer-copyright text-center py-3">Copyright © 2018  Automated Barcode Solutions (Pvt) Ltd . All rights reserved</div>
  	</footer>
  	
</body>
</html>