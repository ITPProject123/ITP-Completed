<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false" %>   
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/glyphican.css">
	<link rel="stylesheet" href="css/custom.css">
	<link rel="stylesheet" href="css/jquery.datetimepicker.min.css">
    <script src="js/jquery.js"></script>
    <script src="js/proper.js"></script>
	<script src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/bootstrapValidator.js"></script>
	<script src="js/jquery.datetimepicker.full.js"></script>
	 	
	<title>Add Device</title>
	
</head>

<body>
	<div class="container-fluid" style="height: 1400px">
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
							    <a href="DeviceRegistration.jsp">Register Device</a>
							    <a href="InventoryForm.jsp">Add to Inventory</a>
							    <a href="RemoveInventory.jsp">Remove Device</a>
							    <a href="UpdateInventory.jsp">Update Inventory</a>
							    <div class="dropdown-divider"></div>
						       	<a href="CheckInventory.jsp">Check Inventory</a>
						       	<a href="ViewInventory.jsp">View Inventory</a>
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
							    <a href="/form">Add Fault</a>
							    <a href="/assign">Assign Technician</a>
							    <a href="#">Client Profile</a>
      							<div class="dropdown-divider"></div>
							    <a href="#"> a System</a>
							    <a href="#"> b System</a>
							    <a href="#"> c System</a>
  							</div>
  						</div>
						<div class="dropdown">
   							<button class="dropbtn dropdown-toggle">Visitor Management</button>
  							<div class="dropdown-content">
							    <a href="#">Add appointment</a>
							    <a href="#">Remove appointment</a>
					
      							<div class="dropdown-divider"></div>
							    <a href="#"> Appointment Log</a>
							    <a href="#"> Event Log</a>
							
  							</div>
  						</div>
				</div>
			</div>
		</div>
		
	<br><br>
		 <h2 style="text-align: center;">Add to inventory</h2>
		<br>
		
		<div class="row md-auto">
			<div class="col-md-12">
				<form:form  method ="POST" modelAttribute="inventory" id="validateForm1" class="form-horizontal form-responsive" action = "iregister">
  				
  				
    					
 	 		
  				<div class="form-group row"  style="margin-left: 30%;margin-top: 2%">
    				<label class="control-label col-sm-2" for="deviceID">DeviceID</label>
    					<div class="col-sm-4"> 
      						<form:input type="text" path="deviceID" class="form-control" id="deviceID"/>
      						<div class = "has-error">
      						<form:errors path="deviceID" class="help-inline"/>
      						</div>
    					</div>
  				</div>
  				<div class="form-group row" style="margin-left: 30%;margin-top: 2%">
    				<label class="control-label col-sm-2" for="quantity">Quantity</label>
    					<div class="col-sm-4">
      						<form:input type="text" path="quantity" class="form-control" id="quantity"/>
      						<div class = "has-error">
      						<form:errors path="quantity" class="help-inline"/>
      						</div>
    					</div>
 	 			</div>
  				<div class="form-group row" style="margin-left: 30%;margin-top: 2%">
    				<label class="control-label col-sm-2" for="criticalLevel">Critical Level</label>
    					<div class="col-sm-4">
      						<form:input type="text" path="criticalLevel" class="form-control" id="criticalLevel"/>
      						<div class = "has-error">
      						<form:errors path="criticalLevel" class="help-inline"/>
      						</div>
    					</div>
 	 			</div>
  				
	 			<div class="form-group" style="margin-left: 32%;margin-top: 2%"> 
    				<div class="col-sm-offset-2 col-sm-10">
    				<div class="form-actions">
      					<button type="submit" value = "submit" class="btn btn-primary">Submit</button>
      					<button type="reset" value="devreset" class="btn btn-primary">Reset</button>
    				</div>
    				</div>
 	 			</div>
				</form:form>
			</div>
  		</div>
  		</div>
  	<script type="text/javascript">
 
   			$(document).ready(function() {
			$('#validateForm1').bootstrapValidator({
				feedbackIcons: {
					valid: 'glyphicon glyphicon-ok',
					invalid: 'glyphicon glyphicon-remove',
					validating: 'glyphicon glyphicon-refresh'
				},
				fields: {
					
					
					
					deviceID: {
						validators: {
							
							notEmpty: {
								message: 'Device ID is required'
							}
						}
					},
		
					quantity: {
						validators: {
							notEmpty: {
								message: 'Quantity is required'
							}
						}
					},
					
					criticalLevel: {
						validators: {
							notEmpty: {
								message: 'Critical level is required'
							}
						}
					},
					
					
					}
				});
			});
   			
		</script>
  <footer class="page-footer" style="background-color:#5c5d60;">
	<div class="footer-copyright text-center py-3">Copyright © 2018  Automated Barcode Solutions (Pvt) Ltd . All rights reserved</div>
  </footer>
</body>
</html>