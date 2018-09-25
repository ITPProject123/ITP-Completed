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
<script type="text/javascript" src="/js/bootstrapValidator.js"></script>
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
			<h1 align="center">Installation Certificate</h1>
		</div>


		<div class="row mx-auto" style="margin-top: 1%; width: 50%">
			<div class="col-md-12">

				<form:form method="POST" modelAttribute="installationcertificate"
					class="form-horizontal" action="/save" id="icform1">


					<div class="form-group row"
						style="margin-left: 25%; margin-top: 2%">
						<label style="width: 200px" for=orID>Order ID</label>
						<div class="col-sm-4" style="margin-left: 12%">
							<form:input type="text" class="form-control" path="orID" name="orID"
								id="ordId"   />
							<div class="has-error">
								<form:errors path="orID" class="help-inline" />
							</div>
						</div>

					</div>
					
					
					<!-- 
					<div class="form-group row"
						style="margin-left: 25%; margin-top: 2%">
						<label style="width: 200px" for="clienId">Client ID</label>
						<div class="col-sm-4" style="margin-left: 12%">
							<form:input type="text" class="form-control" path="clienId" name="clienId"
								id="clienId" placeholder="C1" value="C1" />
							<div class="has-error">
								<form:errors path="clienId" class="help-inline" />
							</div>
						</div>
					</div>
-->
<!-- 

					<div class="form-group row"
						style="margin-left: 25%; margin-top: 2%">
						<label style="width: 200px" for="techID">Technician ID</label>
						<div class="col-sm-4" style="margin-left: 12%;">
							<form:input type="text" class="form-control" path="techId" name="techId"
								id="techID" />
							<div class="has-error">
								<form:errors path="techId" class="help-inline" />
							</div>
						</div>
					</div>
					
 -->
<!--  					<div class="form-group row"
						style="margin-left: 25%; margin-top: 2%">
						<label style="width: 200px" for="drivId">Driver ID</label>
						<div class="col-sm-4" style="margin-left: 12%;">

							<form:input type="text" class="form-control" path="drivId" name="drivId"
								id="drivId" placeholder="Emp1" value="Emp1" />
							<div class="has-error">
								<form:errors path="drivId" class="help-inline" />
							</div>
						</div>
					</div>

 -->
					<!-- 	<div class="form-group row"
						style="margin-left: 25%; margin-top: 2%">
						<label style="width: 200px" for="items">Items</label>
						<div class="col-sm-4" style="margin-left: 12%">
							<textarea placeholder="Enter Items with serial number "
								id="items"></textarea>
						</div>
					</div>
				-->
					<div class="form-group row"
						style="margin-left: 25%; margin-top: 2%">
						<label style="width: 200px" for="cableLen">Cable Length</label>
						<div class="col-sm-4" style="margin-left: 12%">
							<form:input type="number" step="0.01" class="form-control"
								path="cableLen" id="cableLen" placeholder="In Meters" name="cableLen"
								value="hide" min="0"/>
							<div class="has-error">
								<form:errors path="cableLen" class="help-inline" />
							</div>
						</div>

					</div>
					<div class="form-group row"
						style="margin-left: 25%; margin-top: 2%">
						<label style="width: 200px" for="conduitLen">Conduit
							Length</label>
						<div class="col-sm-4" style="margin-left: 12%">
							<form:input type="number" step="0.01" class="form-control"
								path="conduitLen" id="conduitLen" name="conduitLen" placeholder="In Meters"
								value="hide" min="0"/>
							<div class="has-error">
								<form:errors path="conduitLen" class="help-inline" />
							</div>
						</div>
					</div>







					<div class="form-group row"
						style="margin-left: 25%; margin-top: 4%">
						<label style="width: 200px" for="swInstalled">Software
							Installed</label>
						<div class="col-sm-4" style="margin-left: 12%">
							<input type="radio" id="y" value="Yes" name="swInstalled"
								path="swInstalled" onclick="func1();" />Yes<br> <input
								type="radio" id="n" value="No" name="swInstalled"
								path="swInstalled" onclick="func1();" />No
							<form:textarea placeholder="Enter Description"
								path="swInstalledDescription" id="swInstalled" class="form-control" />
							

						</div>
					</div>

					<div class="form-group row"
						style="margin-left: 25%; margin-top: 4%">
						<label style="width: 200px" for="opTraining">Operator
							Training Provided</label>
						<div class="col-sm-4" style="margin-left: 12%">
							<input type="radio" id="y" value="Yes" name="opTraining"
								path="opTraining" onclick="func1();" />Yes<br> <input
								type="radio" id="n" value="No" name="opTraining"
								path="opTraining" onclick="func1();" />No
							<form:textarea placeholder="Enter Description"
								path="opTrainingDescription" id="opTraining" class="form-control" />
							

						</div>
					</div>

					<div class="form-group row"
						style="margin-left: 25%; margin-top: 4%">
						<label style="width: 200px" for="fullyOperational">System
							Fully Operational</label>
						<div class="col-sm-4" style="margin-left: 12%">
							<input type="radio" id="y" value="Yes" name="fullyOperational"
								path="fullyOperational" onclick="func1();" />Yes<br> <input
								type="radio" id="n" value="No" name="fullyOperational"
								path="fullyOperational" onclick="func1();" />No
							<form:textarea placeholder="Enter Description"
								path="fullyOperationalDescription" id="fullyOperational" class="form-control" />
							

						</div>
					</div>
				

					<div class="form-group row"
						style="margin-left: 25%; margin-top: 2%">
						<label style="width: 200px" for="timeIn">Time in</label>
						<div class="col-sm-4" style="margin-left: 12%">
							<form:input type="time" class="form-control" id="timeIn"
								path="timeIn" placeholder="hh/mm" value="hide" />
							<div class="has-error">
								<form:errors path="timeIn" class="help-inline" />
							</div>
						</div>
					</div>
					<div class="form-group row"
						style="margin-left: 25%; margin-top: 2%">
						<label style="width: 200px" for="timeOut">Time out</label>
						<div class="col-sm-4" style="margin-left: 12%">
							<form:input type="time" class="form-control" id="timeOut"
								path="timeOut" placeholder="hh/mm" value="hide" />
							<div class="has-error">
								<form:errors path="timeOut" class="help-inline" />
							</div>
						</div>
					</div>



					<div class="form-group row"
						style="margin-left: 25%; margin-top: 2%">
						<label style="width: 200px" for="dateInstalled">Date</label>
						<div class="col-sm-4" style="margin-left: 12%;">
							<form:input type="date" class="form-control" id="dateInstalled" name="dateInstalled"
								path="dateInstalled" />
							<div class="has-error">
								<form:errors path="dateInstalled" class="help-inline" />
							</div>
						</div>
					</div>







					<div class="row" style="margin-left: 10%";>
						<div class="col text-center">
							<div class="form-actions ">
								<input type="submit" value="Add Items"
									class="btn btn-primary btn-sm">
							</div>
						</div>
					</div>
					
					
					
					
					

				</form:form>
				<script type="text/javascript">
 
   			$(document).ready(function() {
			$('#icform1').bootstrapValidator({
				feedbackIcons: {
					valid: 'glyphicon glyphicon-ok',
					invalid: 'glyphicon glyphicon-remove',
					validating: 'glyphicon glyphicon-refresh'
				},
				fields: {
					
					firstName: {
						validators: {
							stringLength: {
								min: 5,
								message: 'Enter First Name with minimum 5 letters length'
							},
							notEmpty: {
								message: 'Enter First name'
							}
						}
					},
					
					lastName: {
						validators: {
							stringLength: {
								min: 5,
								message: 'Enter Last Name with minimum 5 letters length'
							},
							notEmpty: {
								message: 'Enter Last name'
							}
						}
					},
		
					birthDate: {
						validators: {
							notEmpty: {
								message: 'Birth Date is required'
							}
						}
					},
					
					joinedDate: {
						validators: {
							notEmpty: {
								message: 'Joined Date is required'
							}
						}
					},
		
					gender: {
						validators: {
							notEmpty: {
								message: 'The gender option is required'
							}
						}
					},
					
					NIC: {
						validators: {
							stringLength: {
								max: 10,
								message: 'Enter N.I.C Number with 10 letters in length'
							},
							notEmpty: {
								message: 'N.I.C field is required'
							}
						}
					},
					
					
					
					Cable Length: {
						validators: {
							notEmpty: {
								message: 'Cable Length  is required'
							}
						}
					},
					
					currentAddress: {
						validators: {
							
							stringLength: {
								min: 8,
								message: 'Enter Current address with minimum 8 letters in length'
							},
							notEmpty: {
								message: 'Current Address is required'
							}
						}
					},
					
					homeAddress: {
						validators: {
							stringLength: {
								min: 8,
								message: 'Enter home address with minimum 8 letters of length '
							},
							
							
						}
					},
					
					city: {
						validators: {
							stringLength: {
								min: 5,
								message: 'Enter city field with minimum 5 letters of length '
							},
						}
					},
					
					
					contactNo1: {
						validators: {
							
							stringLength: {
								min: 10,
								message: 'Enter contact number with maximum 10 letters in length '
							},
							
							notEmpty: {
								message: 'Contact No 1 field  is required'
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
					
					experiencedLevel: {
						validators: {
							notEmpty: {
								message: 'Experienced Level  is required'
							}
						}
					},
					
					basicSalary: {
						validators: {
							notEmpty: {
								message: 'Basic Salary  is required'
							}
						}
					},
										
					cv: {
						validators: {
							notEmpty: {
								message: 'CV  is required'
							}
						}
					},
					
					profilePhoto: {
						validators: {
							notEmpty: {
								message: 'Profile Photo  is required'
							}
						}
					},
					
					
					
					userName: {
						validators: {
							notEmpty: {
								message: 'Username  is required'
							}
						}
					},
					
					password: {
						validators: {
							notEmpty: {
								message: 'Password  is required'
							}
						}
					},
					
					postalCode: {
						validators: {
							notEmpty: {
								message: 'Postal Code  is required'
							}
						}
					},
					
					departmentID: {
						validators: {
							notEmpty: {
								message: 'Department  is required'
							}
						}
					},
					
					designation: {
						validators: {
							notEmpty: {
								message: 'Designation  is required'
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


	<footer class="page-footer" style="background-color: #5c5d60;">
		<div class="footer-copyright text-center py-3">
			Copyright © 2018 Automated Barcode Solutions (Pvt) Ltd . All rights
			reserved </a>
		</div>
	</footer>

</body>
</html>