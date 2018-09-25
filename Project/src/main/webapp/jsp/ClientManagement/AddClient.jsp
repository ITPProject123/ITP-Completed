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
    <link rel="stylesheet" href="css/glyphican.css">
	<link rel="stylesheet" href="css/custom.css">
    <script src="js/jquery.js"></script>
    <script type="js/custom.js"></script>
    <script src="js/proper.js"></script>
	<script src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/bootstrapValidator.js"></script>
	<script src="js/jquery.datetimepicker.full.js"></script>
	
    <title>Add Client</title>
</head>

<body>

<div class="container-fluid" style="height: 1175px;background-color:#84B7B8">
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
   							<button class="dropbtn dropdown-toggle"><a href="dash" style="color: black;text-decoration: none;">Client Management</a></button>
  							<div class="dropdown-content">
							   <a href="addClient">Add Client</a>
							    <a href="clientList">Client List</a>
							    <a href="newsLetter">Newsletter</a>
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
		
		
	<div class="row mx-auto">
			<div class="col-md-12">
			    <h2 class="text-center" style="margin-top:4%">Add New Client</h2>
			    
				<form:form method="POST" modelAttribute="client"  class="form-horizontal" action="save" id="validateForm1">
				
				
  				<div class="form-group row" style="margin-left: 20%;margin-top: 3%">
    				<label class="control-label col-sm-2" for="companyName">Company Name</label>
    					<div class="col-sm-4">
      						<form:input type="text" path="companyName" class="form-control" id="companyName" name="companyName"/>
      						<div class ="has-error">
      						<form:errors path="companyName" class="help-inline"/>
      						</div>
    					</div>
 	 			</div>
 	 			
 	 			
 	 			
  				<div class="form-group row"  style="margin-left: 20%;margin-top: 4%">
    				<label class="control-label col-sm-2" for="clientName">Contact Person Name</label>
    					<div class="col-sm-4"> 
      						<form:input type="text" path="clientName" class="form-control" id="clientName" name="clientName"/>
      						<div class="has-error">
      						<form:errors path="clientName" class="help-inline"/>
      						</div>
    					</div>
  				</div>
  				
  				
  				<div class="form-group row" style="margin-left: 20%;margin-top: 4%">
    				<label class="control-label col-sm-2" for="address">Address</label>
    				   <div class="col-sm-4"> 
      						<form:input type="number" path="postalCode" class="form-control" id="postalCode" name="postalCode" placeholder="Postal Code" value="hide"/>
      						<div class="has-error">
      						<form:errors path="postalCode" class="help-inline"/>
      						</div>
    					</div>
    					
    					<div class="col-sm-4"style="margin-left: 17%; margin-top:4%"> 
      						<form:input type="text" path="street" class="form-control" id="street" name="street" placeholder="Street"/>
      						<div class="has-error">
      						<form:errors path="street" class="help-inline"/>
      						</div>
    					</div>
    					
    					
    					<div class="col-sm-4" style="margin-left: 17%; margin-top:4%"> 
      						<form:input type="text" path="city" class="form-control" id="city" name="city" placeholder="City"/>
      						<div class="has-error">
      						<form:errors path="city" class="help-inline"/>
      						</div>
    					</div>	
 	 			</div>
  				
  				
  				
  				<div class="form-group row" style="margin-left: 20%;margin-top: 4%">
    				<label class="control-label col-sm-2" for="contactNumber">Contact No</label>
    					<div class="col-sm-4">
      						<form:input type="number" path="contactNumber" class="form-control" id="contactNumber" name="contactNumber" value="hide"/>
      						<div>
      						<form:errors path="contactNumber" class="help-inline"/>
      						</div>
    					</div>
 	 			</div>
 	 			
 	 			
 	 			
  				<div class="form-group row"  style="margin-left: 20%;margin-top: 4%">
    				<label class="control-label col-sm-2" for="email">Email</label>
    					<div class="col-sm-4"> 
      						<form:input type="email" path="email" class="form-control" id="email" name="email"/>
      						<div>
      						<form:errors path="email" class="help-inline"/>
      						</div>
    					</div>
  				</div>
  				
  				
  				
  				
	 			<div class="form-group" style="margin-left: 34%;margin-top: 4%"> 
    				<div class="col-sm-offset-2 col-sm-10">
    				<div class="form-action">
      					<button type="submit" class="btn btn-primary">Add Client</button>
    				</div>
    				</div>
    		   </div>
 	 			
 	 			
				</form:form>
				
		<script type="text/javascript">
 
   			$(document).ready(function() {
			$('#validateForm1').bootstrapValidator({
				feedbackIcons: {
					valid: 'glyphicon glyphicon-ok',
					invalid: 'glyphicon glyphicon-remove',
					validating: 'glyphicon glyphicon-refresh'
				},
				fields: {
					
					clientName: {
						validators: {
							stringLength: {
								min: 5,
				
							},
							notEmpty: {
								message: 'Enter the client name'
							}
						}
					},
					
					companyName: {
						validators: {
							stringLength: {
								min: 5,
					
							},
							notEmpty: {
								message: 'Enter Company Name'
							}
						}
					},
					
					email: {
						validators: {
							notEmpty: {
								message: 'Email field  is required'
							}
						}
					},
					
					contactNumber: {
						validators: {
							
							stringLength: {
								min: 10,
								max: 10,
							},
							
							notEmpty: {
								message: 'Contact No field  is required'
							}
						}
					},
					
					
					postalCode: {
						validators: {
							
							stringLength: {
								min: 5,
								max: 5,
							},
							notEmpty: {
								message: 'Enter a valid Postal Code'
							}
						}
					},
					
					
					city: {
						validators: {
							stringLength: {
								min: 5,
								message: 'Enter city field  '
							},
						}
					},
					
					
					street: {
						validators: {
							stringLength{
								min= 5,
							},
							notEmpty: {
								message: 'Bank Account Number  is required'
							}
						}
					},
					
				}
				});
			});
   			
		</script>
			</div>
  		</div>	
		
		
		
		
		
	</div>
  
  <footer class="page-footer" style="background-color:#5c5d60;">
	<div class="footer-copyright text-center py-3">Copyright © 2018  Automated Barcode Solutions (Pvt) Ltd . All rights reserved </a></div>
  </footer>

</body>
</html>