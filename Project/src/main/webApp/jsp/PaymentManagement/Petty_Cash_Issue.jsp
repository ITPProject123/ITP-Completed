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




<title>Petty Cash Register</title>
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
						<span style="text-decoration: underline;">Petty Cash
							Register</span>
					</div>
					<form:form modelAttribute="pettyCashRegister"
						class="form-horizontal" action="Save" method="POST"
						id="validateForm1">

						<div class="form-group row"
							style="margin-left: 30%; margin-top: 4%">
							<label class="control-label col-sm-2" for="date">Date</label>
							<div class="col-sm-4">
								<form:input type="date" path="date" class="form-control"
									id="date" placeholder="Enter Date" />
								<div class="has-error">
									<form:errors path="date" class="help-in-line" />
								</div>
							</div>
						</div>


						<div class="form-group row"
							style="margin-left: 30%; margin-top: 4%">
							<label class="control-label col-sm-2" for="amount">Amount</label>
							<div class="col-sm-4">
								<form:input type="number" path="amount" class="form-control"
									id="amount" placeholder="Enter Amount" />
								<div class="has-error">
									<form:errors path="amount" class="help-in-line" />
								</div>
							</div>
						</div>

						<div class="form-group row"
							style="margin-left: 30%; margin-top: 4%">
							<label class="control-label col-sm-2" for="employee">Employee
								Id </label>
							<div class="col-sm-4">
								<form:input type="number" path="employeeId" class="form-control"
									id="employeeId" placeholder="Enter Employee Id" />
								<div class="has-error">
									<form:errors path="employeeId" class="help-in-line" />
								</div>

							</div>
						</div>

						<div class="form-group row"
							style="margin-left: 30%; margin-top: 4%">
							<label class="control-label col-sm-2" for="reason">Reason</label>
							<div class="col-sm-4">
								<form:input type="text" path="reason" class="form-control"
									id="reason" placeholder="Enter Reason" />
								<div class="has-error">
									<form:errors path="reason" class="help-in-line" />
								</div>
							</div>
						</div>

						<div class="form-group row"
							style="margin-left: 30%; margin-top: 4%">
							<label class="control-label col-sm-2" for="return">Return
								Status</label>
							<div class="col-sm-4">
								<form:select path="returnStatus" class="form-control"
									id="returnStatus">
									<option value="Issued">Issued</option>
									<option value="Pending">Pending</option>
									<option value="Completed">Completed</option>

								</form:select>

								<div class="has-error">
									<form:errors path="returnStatus" class="help-in-line" />
								</div>
							</div>
						</div>









						<div class="form-group row">
							<div class="col md-5 offset-3 mt-5 ">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>


						</div>

					</form:form>


					<script type="text/javascript">
						$(document)
								.ready(
										function() {
											$('#validateForm1')
													.bootstrapValidator(
															{
																feedbackIcons : {
																	valid : 'glyphicon glyphicon-ok',
																	invalid : 'glyphicon glyphicon-remove',
																	validating : 'glyphicon glyphicon-refresh'
																},
																fields : {

																	date : {
																		validators : {

																			notEmpty : {
																				message : 'Select Date'
																			}
																		}
																	},

																	amount : {
																		validators : {

																			notEmpty : {
																				message : 'Enter Amount'
																			}
																		}
																	},

																	employeeId : {
																		validators : {
																			stringLength : {
																				max : 5,
																				min : 5,
																				message : 'Enter only 5 Numbers'
																			},

																			notEmpty : {
																				message : 'employeeId'
																			}
																		}
																	},

																	reason : {
																		validators : {
																			notEmpty : {
																				message : 'Enter Name'
																			}
																		}
																	},

																	returnStatus : {
																		validators : {
																			notEmpty : {
																				message : 'Enter Status'
																			}
																		}
																	}

																}
															});
										});
					</script>




















				</div>
			</div>
		</div>

		<!----------------------------------------------------------------------------------------------------------------------------->



		<!-- -------------------------------------------------------------------------------------------------------------- -->
		<footer class="page-footer" style="background-color: #5c5d60;">
			<div class="footer-copyright text-center py-3">
				Copyright © 2018 Automated Barcode Solutions (Pvt) Ltd . All rights
				reserved </a>
			</div>
		</footer>
</body>
</html>