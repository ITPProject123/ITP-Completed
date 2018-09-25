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

<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/custom.css">
<script src="/js/jquery.js"></script>
<script src="/js/proper.js"></script>
<script src="/js/bootstrap.js"></script>

<title>Petty Cash Register</title>
</head>
<Body>
	<!-------------------------------------------------------------------------------------------------------------------------->
	<div class="container-fluid" style="height:100%">
		<div class="row" >
			<div class="header">
				<img src="Images/logo.PNG" style="width:12%;margin-left: 2%">
 				<font style="font-family: Good Times; font-size: 230%"><span style="color: white;margin-left: 2%;marg">Automated Barcode Solutions</span></font>
 
 					<div class="navbar">
						<div class="dropdown">
  							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Employee Management</a></button>
  							<div class="dropdown-content">
    							<a href="AddDEO.jsp">Add Employee</a>
							    <a href="RemoveEmployee.jsp">Remove Employee</a>
							    <a href="EmployeeProfile.jsp">Employee Profile</a>
      							<div class="dropdown-divider"></div>
							    <a href="#">Payroll System</a>
							    <a href="Time&Attend.jsp">Time and Attendance System</a>
							    <a href="Leave.jsp">Leaving System</a>
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
   							<button class="dropbtn dropdown-toggle"><a href="/Payments_Home" style="color: black;text-decoration: none;">Payment Management</a></button>
						  	<div class="dropdown-content">
							    <a href="clientsPayments">Client Payments</a>
							    <a href="employeePayments">Employee Payments</a>
							    <a href="pettyCashRegister">Petty Cash Register</a>
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




<div class="jumbotron"><h1>Petty Cash Register</h1></div>



<!-- ---------------------------------------------------- -->

<form:form  class="form-horizontal" >
<table id="t01" border="2px" width="70%" cellpadding="2" class="table table-hover" >
<tr><th>Id</th><th>Date</th><th>Amount</th>
<th>EmployeeId</th><th>Reason</th>
<th>Return Status</th><th></th><th></th></tr>  

   <c:forEach var="pettyCashRegister" items="${list}"> 
   <tr>  
   <td>${pettyCashRegister.pettyCashId}</td>  
   <td>${pettyCashRegister.date}</td> 
   <td>${pettyCashRegister.amount}</td>  
   <td>${pettyCashRegister.employeeId}</td> 
   <td>${pettyCashRegister.reason}</td>  
   <td>${pettyCashRegister.returnStatus}</td> 
    <td><a href="pettyIssueEdit/${pettyCashRegister.pettyCashId}">Edit</a></td>  
 	<td><a href="deleteentry/${pettyCashRegister.pettyCashId}" >Delete</a></td> 
 	 
 
   </tr>  
   </c:forEach> 
   
   
   </table>  
   <br/>
   
  

</form:form>

<a href="/pettycashregisterreport" >Report</a> 







</div>









	<!-- -------------------------------------------------------------------------------------------------------------- -->
	<footer class="page-footer" style="background-color: #5c5d60;">
		<div class="footer-copyright text-center py-3">
			Copyright © 2018 Automated Barcode Solutions (Pvt) Ltd . All rights
			reserved </a>
		</div>
	</footer>
</body>
</html>