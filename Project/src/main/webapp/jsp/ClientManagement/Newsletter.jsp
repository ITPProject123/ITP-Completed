<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
      <meta charset="ISO-8859-1">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	  <link rel="stylesheet" href="css/bootstrap.css">
	  <link rel="stylesheet" href="css/custom.css">
      <script src="js/jquery.js"></script>
      <script src="js/proper.js"></script>
	  <script src="js/bootstrap.js"></script>
     
      <title>Newsletter</title>
</head>
<body>


<div class="container-fluid" style="height: 950px;background-color:#84B7B8">
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
							    <a href="AddClient.jsp">Add Client</a>
							    <a href="ClientProfile.jsp">Client Profile</a>
							    <a href="ClientList.jsp">Client List</a>
							    <a href="Eventlog.jsp">Event Log</a>
							    <a href="Newsletter.jsp">Newsletters</a>
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
	
		<div style="width: 900px">
		 <h1 style="margin-top: 3%;margin-left: 6%">Newsletter</h1>    
		<form class="form-horizontal">
		   <div style="margin-top: 3%;margin-left: 8%">
		     <label class="control-label col-sm-2" for="subject">Subject</label><br>
		     <input type="text" id="subject">
		   </div> 
		   
		   <div style="margin-top: 3%;margin-left: 8%">
		     <label class="control-label col-sm-2" for="fromName">From Name</label><br>
		     <input type="text" id="fromName">
		    </div> 
		    
		    <div  style="margin-top: 3%;margin-left: 8%">
		     <label class="control-label col-sm-2" for="fromEmail">From Email</label><br>
		     <input type="email" id="fromEmail">
		    </div> 
		    
		    <div  style="margin-top: 3%;margin-left: 8%">
		     <label class="control-label col-sm-2" for="replyEmail">Reply to email</label><br>
		     <input type="email" id="replyEmail">
		    </div> 
		    
		    
		    <div style="margin-top:5%;margin-left: 8%;margin-right: 45%">
		      <button type="submit" class="btn btn-primary">Save & Send</button>
		    </div>
		</form>
		
		</div>
		
		<div>
		 
		
		</div>
		
		
		
		<div>
	
		</div>
 
 
 
     </div>
	
	<footer class="page-footer" style="background-color:#5c5d60;">
	<div class="footer-copyright text-center py-3">Copyright © 2018  Automated Barcode Solutions (Pvt) Ltd . All rights reserved </a></div>
    </footer>

</body>
</html>