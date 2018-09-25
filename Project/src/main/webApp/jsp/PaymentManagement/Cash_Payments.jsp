<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>





<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>




<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<link rel="stylesheet" href="css/glyphican.css" >
<script src="/js/jquery.js"></script>
<script src="/js/proper.js"></script>
<script src="/js/bootstrap.js"></script>

<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<script src="js/jquery.datetimepicker.full.js"></script>






<title>Cash Payments</title>
</head>
<Body>
	<!-------------------------------------------------------------------------------------------------------------------------->
	<div class="container-fluid" style="height: 1300px">
		<div class="row">
			<div class="header">
				<img src="Images/logo.PNG" style="width: 12%; margin-left: 2%">
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
							<a href="AddDEO.jsp">Add Employee</a> <a
								href="RemoveEmployee.jsp">Remove Employee</a> <a
								href="EmployeeProfile.jsp">Employee Profile</a>
							<div class="dropdown-divider"></div>
							<a href="#">Payroll System</a> <a href="Time&Attend.jsp">Time
								and Attendance System</a> <a href="Leave.jsp">Leaving System</a>
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
							<a href="#">Add Client</a> <a href="#">Remove Client</a> <a
								href="#">Client Profile</a>
							<div class="dropdown-divider"></div>
							<a href="#"> a System</a> <a href="#"> b System</a> <a href="#">
								c System</a>
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
		<!----------------------------------------------------------------------------------------------------------------------------->
	<noscript>Enable JavaScript in your browser</noscript>
		<script>
			$(function() {
				$('.form').hide();
				$('.f1').show();

				$('#genContent').on("change", function() {
					$('.form').hide();
					$('.f' + $(this).val()).show();
				}).val("1");
			});
		</script>
	
	
	
	
	<div class="form f1">
	
		<div class="row mx-auto">
			<div class="col-md-12">
			
			
			
			

				<div class="col-md-12  my-5 text-center">
					<span style="text-decoration: underline;"><h4>Cash
							Payments</h4></span>
				</div>


				<!--  	<div class="form-group row" style="margin-left: 30%;margin-top: 12%">
    				<label class="control-label col-sm-2" for="email">Payment Id</label>
    					<div class="col-sm-4">
      						<input type="email" class="form-control" id="userName" placeholder="Id">
    					</div>
 	 			</div>  -->


				<form:form modelAttribute="clientCashPayments"
					class="form-horizontal" action="/cashPaySave"
					method="POST"          id="validateForm1"         >

					<div class="form-group row"
						style="margin-left: 30%; margin-top: 4%">
						<label class="control-label col-sm-2" for="date">Date</label>
						<div class="col-sm-4">
							<form:input type="date" path="date" class="form-control"
								id="date" placeholder="Enter Date" name="date"/>
							<div class="has-error">
								<form:errors path="date" class="help-in-line" />
							</div>
						</div>
					</div>









					<!--  	<div class="form-group row"  style="margin-left: 30%;margin-top: 4%">
    				<label class="control-label col-sm-2" for="pwd">Cash Pay Id</label>
    					<div class="col-sm-4"> 
      						<input type="password" class="form-control" id="pwd" placeholder="Enter Id">
    					</div>
  				</div> -->


					<div class="form-group row"
						style="margin-left: 30%; margin-top: 4%">
						<label class="control-label col-sm-2" for="date">${clientCashPayments.salesId}</label>
						<div class="col-sm-4">
							<form:input type="hidden" path="salesId" class="form-control"
								id="salesId" placeholder="${clientCashPayments.salesId}"  name="salesId"/>
							<div class="has-error">
								<form:errors path="salesId" class="help-in-line" />
							</div>
						</div>
					</div>









					<div class="form-group row"
						style="margin-left: 30%; margin-top: 4%">
						<label class="control-label col-sm-2" for="amount">Amount</label>
						<div class="col-sm-4">
							<form:input type="number" path="amount" class="form-control"
								id="amount" placeholder="amount" name="amount" />
							<div class="has-error">
								<form:errors path="amount" class="help-in-line" />
							</div>
						</div>
					</div>










					<div class="form-group row"
						style="margin-left: 30%; margin-top: 4%">
						<label class="control-label col-sm-2" for="customerName">Customer
							Name</label>
						<div class="col-sm-4">
							<form:input type="text" path="customerName" class="form-control"
								id="customerName" placeholder="Name" name="customerName" />
							<div class="has-error">
								<form:errors path="customerName" class="help-in-line" />
							</div>
						</div>
					</div>












					<div class="form-group row"
						style="margin-left: 30%; margin-top: 4%">
						<label class="control-label col-sm-2" for="discount">Discount</label>
						<div class="col-sm-4">
							<form:input type="number" path="discount" class="form-control"
								id="discount" placeholder="discount" name="discount" />
							<div class="has-error">
								<form:errors path="discount" class="help-in-line" />
							</div>
						</div>
					</div>
















					<div class="form-group row">
						<div class="col md-5 offset-3 mt-5 ">
							<button type="submit" class="btn btn-primary">Submit</button>
						</div>

						<div class="col md-5 mt-5 ">
							<button type="reset" class="btn btn-primary">Reset</button>
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
					
					date: {
						validators: {
							
							notEmpty: {
								message: 'Select Date'
							}
						}
					},
					
					salesId: {
						validators: {
							stringLength: {
								max: 5,
								message: 'Enter only 5 Numbers'
							},
							notEmpty: {
								message: 'Enter Sales Id'
							}
						}
					},
		
					amount: {
						validators: {
							notEmpty: {
								message: 'Enter Amount'
							}
						}
					},
					
					customerName: {
						validators: {
							notEmpty: {
								message: 'Enter Name'
							}
						}
					},
		
					discount: {
						validators: {
							notEmpty: {
								message: 'Enter Discount'
							}
						}
					}
					
					
				
					
					
					}
				});
			});
   			
		</script>
























</div>


	<!----------------------------------------------------------------------------------------------------------------------------->
	<footer class="page-footer" style="background-color: #5c5d60;">
		<div class="footer-copyright text-center py-3">
			Copyright © 2018 Automated Barcode Solutions (Pvt) Ltd . All rights
			reserved </a>
		</div>
	</footer>
</body>
</html>