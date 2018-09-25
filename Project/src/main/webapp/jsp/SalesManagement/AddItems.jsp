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
<link rel="stylesheet" href="/css/custom.css">
<link rel="stylesheet" href="/css/glyphican.css">
<link rel="stylesheet" href="/css/jquery.datetimepicker.min.css">
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<script src="js/jquery.datetimepicker.full.js"></script>
<script src="js/jquery.js"></script>
<script src="js/proper.js"></script>
<script src="js/bootstrap.js"></script>


<script>
		function func1(){
		
		if(do.getElementById("y").checked){
			var val = do.geTelementById("y").value;
		}
		else if(do.getElementById("n").checked){
			var val = do.geTelementById("n").value;
		}
		}

</script>
<script >
	function addFields() {
		var number = document.getElementById("numOfDev").value;
		var container = document.getElementById("container");
		while (container.hasChildNodes()) {
			container.removeChild(container.lastChild);
		}
		for (i = 0; i < number; i++) {
			container.appendChild(document.createElement("br"));
			container.appendChild(document.createTextNode("Device " + (i + 1)
					+ " ID"));
			var input = document.createElement("input");
			input.type = "text";
			input.path="devicesCode"
			input.name="devicesCode"
			input.id="devicesCode"
			container.appendChild(input);
			

			container.appendChild(document.createTextNode("  Quntity of device "
					+ (i + 1)));
			var input = document.createElement("input");
			input.type = "number";
			input.min = "0";
			input.path="quantity"
				input.name="quantity"
				input.id="quantity"
			container.appendChild(input);
			container.appendChild(document.createElement("br"));
			//container.appendChild(document.createElement("br"));
		}
	}
</script>


<title>Installation Certificate</title>
</head>

<body>
	<div class="container-fluid" style="height: 2200px">
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



		<div style="text-align: center; margin-left: 4%; margin-top: 7%">
			<h1 align="center">Add Items</h1>
		</div>


		<div class="row mx-auto" style="margin-top: 1%; width: 50%">
			<div class="col-md-12">

				<form:form method="POST" class="form-horizontal" modelAttribute="additems" action="/add"  id="icform1">


					<div class="form-group row"
						style="margin-left: 25%; margin-top: 2%">
						<label style="width: 200px" for="installationCode">Installation Certificate ID</label>
						<div class="col-sm-4" style="margin-left: 12%">
							<form:input type="text" class="form-control" path="installationCode" name="installationCode"
								id="installationCode"  readonly="true" />
							<div class="has-error">
								<form:errors path="installationCode" class="help-inline" />
							</div>
						</div>

					</div>

					

				
<div class="form-group row" style="margin-left: 25%; margin-top: 2%">
		<label style="width: 200px" for="numOfDev">Number of items</label>
		<div class="col-sm-4" style="margin-left: 12%">
			<form:input type="number" class="form-control" path="numOfDev"
				id="numOfDev" name="numOfDev" value="hide" min="0" max="10"/>

		</div>
		<br /><br />
		
		
		 
	</div>
	<br />
		
<div class="row" style="margin-left: 10%";>
						<div class="col text-center" >
							<div class="form-actions ">
								<input type="button" value="Fill Items Details"
									class="btn btn-primary btn-sm"  onclick="addFields()" id="filldetails"/>
									<div id="container"></div>
							</div>
						</div>
					</div>
					




				

<br />
		





					<div class="row" style="margin-left: 10%";>
						<div class="col text-center">
							<div class="form-actions ">
								<input type="submit" value="Save Added Items"
									class="btn btn-primary btn-sm">
							</div>
						</div>
					</div>
					
					
					
					
					

				</form:form>
			
		
			</div>
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