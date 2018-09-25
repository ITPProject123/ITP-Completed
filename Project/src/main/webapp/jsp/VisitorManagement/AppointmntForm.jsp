<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false" %>  
<%@page import="java.sql.*"  %> 
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
   
	 	
	<title>Add Appointment</title>
	
</head>

<body>
	<div class="container-fluid" style="height: 2000px">
		<div class="row" >
			<div class="header">
				<img src="Images/logo.png" style="width:12%;margin-left: 2%">
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
   							<a href="vhome" style="color: black;text-decoration: none;"><button class="dropbtn dropdown-toggle">Visitor Management</button></a>
  							<div class="dropdown-content">
							    <a href="appform">Add appointment</a>
							    <a href="alog">Remove appointment</a>
					
      							<div class="dropdown-divider"></div>
							    <a href="alog"> Appointment Log</a>
							    <a href="evelog"> Event Log</a>
							
  							</div>
  						</div>
				</div>
			</div>
		</div>
		<br>
		 <h2 style="text-align: center;">Appointment Form</h2>
		
		<div class="row md-auto">
			<div class="col-md-12">
				<form:form  method ="POST" modelAttribute="visitor" id="validateForm" class="form-horizontal" action = "addapp">
  				
  				<div class="form-group row" style="margin-left: 30%;margin-top: 4%">
    				<label class="control-label col-sm-2" for="appid">Appointment ID</label>
    					<div class="col-sm-4">
    					<font color="red">
      						<input type="hidden" class="form-control" id="appid"/></font>
      						</div>
    					</div>
    					
 	 		
  				<div class="form-group row"  style="margin-left: 30%;margin-top: 2%">
    				<label class="control-label col-sm-2" for="visitorName">Name of Visitor</label>
    					<div class="col-sm-4"> 
      						<form:input type="text" path="visitorName" class="form-control" id="visitorName"/>
      						<div class = "has-error">
      						<font color="red">
      						<form:errors path="visitorName" class="help-inline"/></font>
      						</div>
    					</div>
  				</div>
  				
  				<div class="form-group row" style="margin-left: 30%;margin-top: 2%">
    				<label class="control-label col-sm-2" for="companyName">Name of Company</label>
    					<div class="col-sm-4">
      						<form:input type="text" path="companyName" class="form-control" id="companyName"/>
      						<div class = "has-error">
      						<font color="red">
      						<form:errors path="companyName" class="help-inline"/></font>
      						</div>
    					</div>
 	 			</div>
 	 			<div class="form-group row"  style="margin-left: 30%;margin-top: 2%">
    				<label class="control-label col-sm-2" for="mail">Email</label>
    					<div class="col-sm-4"> 
      						<form:input type="text" path="mail" class="form-control" id="mail"/>
      						<div class = "has-error">
      						<font color="red">
      						<form:errors path="mail" class="help-inline"/></font>
      						</div>
    					</div>
    					</div>
    				
    			<div class="form-group row"  style="margin-left: 30%;margin-top: 2%">
    				<label class="control-label col-sm-2" for="contactNumber">Contact Number</label>
    					<div class="col-sm-4"> 
      						<form:input type="text" path="contactNumber" class="form-control" id="contactNumber"/>
      						<div class = "has-error">
      						<font color="red">
      						<form:errors path="contactNumber" class="help-inline"/></font>
      						</div>
    					</div>
  				</div>
  				<div class="form-group row"  style="margin-left: 30%;margin-top: 2%">
    				<label class="control-label col-sm-2" for="appdate">Date</label>
    					<div class="col-sm-4"> 
      						<form:input type="date" path="appdate" class="form-control" id="appdate"/>
      						<div class = "has-error">
      						<font color="red">
      						<form:errors path="appdate" class="help-inline"/></font>
    					</div>
  				</div></div>
  				
  				
  				
  				<div class="form-group row"  style="margin-left: 30%;margin-top: 2%">
    				<label class="control-label col-sm-2" for="assigned_employee">Assigned Employee</label>
    					<div class="col-sm-4"> 
      						<form:input type="text" path="assigned_employee" class="form-control" id="assigned_employee"/>
      						
    					</div>
  				</div>
  				
  				<div class="form-group row"  style="margin-left: 30%;margin-top: 2%">
    				<label class="control-label col-sm-2" for="comments">Comments</label>
    					<div class="col-sm-4"> 
      						<form:input type="text" path="comments" class="form-control" id="comments"/>
      						
    					</div>
  				</div>
  				
  				<div class="form-group row" style="margin-left: 30%;margin-top: 2%">
    				<label class="control-label col-sm-2" for="stat">Status</label>
    					<div class="col-sm-4">
      						<select class="form-control" id="stat"  name="stat">
      						  <option value="pending">Pending</option>
      						  <option value="conf">Confirmation Sent</option>
                              <option value="visited">Visited</option>
                            
                             
                         </select>
                         
      						
       </div>
 	 			</div>
  				
	 			<div class="form-group" style="margin-left: 42%;margin-top: 2%"> 
    				<div class="col-sm-offset-2 col-sm-10">
    				<div class="form-actions">
      					<button type="submit" value = "submit" class="btn btn-primary">Add Appointment</button>
    				</div>
    				</div>
 	 			</div>
				</form:form>
			</div>
  		</div>
  		
  		<script type = "text/javascript">
  		
  		$(document).ready(function() {
			$('#validateForm').bootstrapValidator({
				feedbackIcons: {
					valid: 'glyphicon glyphicon-ok',
					invalid: 'glyphicon glyphicon-remove',
					validating: 'glyphicon glyphicon-refresh'
				},
				
				fields: {
					visitorName:{
						validators:{
						notEmpty:{
							message:'Visitor name field cannot be empty'
						}
					}
					},
					companyName:{
						validators:{
							notEmpty:{
								message:'Company name field cannot be empty'
							}
						}
					},
					appdate:{
						validators:{
						notEmpty:{
							message:'Date field cannot be empty'
						}
					}
					},
					mail:{
						validators:{
							notEmpty:{
								message:'Date field cannot be empty'
							}
						}
					},
					contactNumber:{
						validators:{
							notEmpty:{
								message:'contact number field cannot be empty'
							}
						}
					},
				}
				    
				   
					});
				});
  		
  		</script>
  		</div>
  
  <footer class="page-footer" style="background-color:#5c5d60;">
	<div class="footer-copyright text-center py-3">Copyright © 2018  Automated Barcode Solutions (Pvt) Ltd . All rights reserved</div>
  </footer>
</body>
</html>