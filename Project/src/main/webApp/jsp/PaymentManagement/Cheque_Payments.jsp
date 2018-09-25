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
<link rel="stylesheet" href="css/glyphican.css">
<script src="/js/jquery.js"></script>
<script src="/js/proper.js"></script>
<script src="/js/bootstrap.js"></script>

<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<script src="js/jquery.datetimepicker.full.js"></script>

<title>Cheque Payments</title>
</head>
<Body>
	<!-------------------------------------------------------------------------------------------------------------------------->
	<div class="container-fluid" style="height: 1500px">
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
		<div class="row mx-auto">
			<div class="col-md-12">

				<div class="col-md-12  my-5 text-center">
					<span style="text-decoration: underline;"><h4>Cheque
							Payments</h4></span>
				</div>

				<form:form modelAttribute="clientChequePayments"
					class="form-horizontal" action="/chequePaySave"
					method="POST" id="validateForm1">
					
					
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
					
				

					<div class="form-group row"
						style="margin-left: 30%; margin-top: 4%">
						<label class="control-label col-sm-2" for="salesId">Sales Id</label>
						<div class="col-sm-4">
							<form:input type="number" path="salesId" class="form-control"
								id="salesId" placeholder="Sales Id" name="salesId"/>
							<div class="has-error">
								<form:errors path="salesId" class="help-in-line" />
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
						<label class="control-label col-sm-2" for="chequeNumber">cheque Number</label>
						<div class="col-sm-4">
							<form:input type="number" path="chequeNumber" class="form-control"
								id="chequeNumber" placeholder="chequeNumber" name="chequeNumber"/>
							<div class="has-error">
								<form:errors path="chequeNumber" class="help-in-line" />
							</div>
						</div>
					</div>

					<div class="form-group row"
						style="margin-left: 30%; margin-top: 4%">
						<label class="control-label col-sm-2" for="bankedDate">Banked Date</label>
						<div class="col-sm-4">
							<form:input type="date" path="bankedDate" class="form-control"
								id="bankedDate" placeholder="Enter Date" name="bankedDate"/>
							<div class="has-error">
								<form:errors path="bankedDate" class="help-in-line" />
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
						<label class="control-label col-sm-2" for="bank">Bank</label>
						<div class="col-sm-4">
							<form:input type="text" path="bank" class="form-control"
								id="bank" placeholder="bank" name="bank" />
							<div class="has-error">
								<form:errors path="bank" class="help-in-line" />
							</div>
						</div>
					</div>


					
					
					
				


					<div class="form-group row"
							style="margin-left: 30%; margin-top: 4%">
							<label class="control-label col-sm-2" for="status">
								Status</label>
							<div class="col-sm-4">
								<form:select path="status" class="form-control"
									id="status">
									<option value="Cleared">Cleared</option>
									<option value="Pending">Pending</option>
									
								</form:select>

								<div class="has-error">
									<form:errors path="status" class="help-in-line" />
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






	<!----------------------------------------------------------------------------------------------------------------------------->
	<footer class="page-footer" style="background-color: #5c5d60;">
		<div class="footer-copyright text-center py-3">
			Copyright © 2018 Automated Barcode Solutions (Pvt) Ltd . All rights
			reserved </a>
		</div>
	</footer>
</body>
</html>