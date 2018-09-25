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

	  <link rel="stylesheet" href="/css/bootstrap.css">
	  <link rel="stylesheet" href="/css/custom.css">
      <script src="/js/jquery.js"></script>
      <script type="/js/custom.js"></script>
      <script src="/js/proper.js"></script>
	  <script src="/js/bootstrap.js"></script>
	  
<title>Add Branch</title>
</head>
<body>

<div class="container-fluid" style="height: 1000px;background-color:#84B7B8">
		<div class="row" >
			<div class="header">
				<img src="/Images/logo.PNG" style="width:12%;margin-left: 2%">
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
							    <a href="addClient">Add Client</a>
							    <a href="clientList">Client List</a>
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
		<div>
		  
		  <h2 class="text-center" style="margin-top:5%">Add Branch</h2>
		  
	     <form:form method="POST" modelAttribute="client"  class="form-horizontal" action="savebranch">
				
				
				
				<div class="form-group row" style="margin-left: 20%;margin-top: 3%">
    					<div class="col-sm-4">
      						<form:input type="text" path="clientID" class="form-control" id="clientID"  name="clientID" />
      						<div class ="has-error">
      						<form:errors path="clientID" class="help-inline"/>
      						</div>
    					</div>
 	 			</div>
 	 			
  				<div class="form-group row" style="margin-left: 20%;margin-top: 3%">
    				<label class="control-label col-sm-2" for="bAddress">Branch Address</label>
    					<div class="col-sm-4">
      						<form:input type="text" path="bAddress" class="form-control" id="bAddress" name="bAddress"/>
      						<div class ="has-error">
      						<form:errors path="bAddress" class="help-inline"/>
      						</div>
    					</div>
 	 			</div>
 	 			
 	 			
 	 			
  				<div class="form-group row"  style="margin-left: 20%;margin-top: 4%">
    				<label class="control-label col-sm-2" for="bCity">Branch City</label>
    					<div class="col-sm-4"> 
      						<form:input type="text" path="bCity" class="form-control" id="bCity" name="bCity"/>
      						<div class="has-error">
      						<form:errors path="bCity" class="help-inline"/>
      						</div>
    					</div>
  				</div>
  				
  				<div class="form-group" style="margin-left: 34%;margin-top: 4%"> 
    				<div class="col-sm-offset-2 col-sm-10">
    				<div class="form-action">
      					<button type="submit" class="btn btn-primary">Add Branch</button>
    				</div>
    				</div>
    		   </div>	
  				
  		 </form:form>		
		
		</div>
		
	</div>
  
  <footer class="page-footer" style="background-color:#5c5d60;">
	<div class="footer-copyright text-center py-3">Copyright © 2018  Automated Barcode Solutions (Pvt) Ltd . All rights reserved </a></div>
  </footer>
</body>
</html>