<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%> 


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/custom.css">
<script src="js/jquery.js"></script>
<script src="js/proper.js"></script>
<script src="js/bootstrap.js"></script>
<style>
table {
    border-collapse: collapse;
    
}

th {
    background-color: #0171a1;
    color: white;
}


th, td {
    text-align: center;
    padding: 8px;
}



tr:nth-child(odd) {background-color: #9fc1cf;}
tr:hover {background-color:#2bb2cf;}
</style>

<title>View And Assign Technicians</title>
</head>

<body>
	<div class="container-fluid" style="height: 1200px">
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
<br>


		<br>

		<h1 align="center">Available Technicians</h1>
		<br>
		<form:form>
			<div class="table-responsive">


				<table id="technicianTable" border="0px" align="center">
					<tr align="center">
						<th>Technician ID</th>
						<th>Name</th>
						<th>Experienced Level</th>
						<th>Email</th>
						<th>Contact Numbers</th>
						<th>Bike Number</th>
					</tr>

					<c:forEach var="clientorder" items="${list}">
						<tr align="center">
							<td>${clientorder.employeeCode}</td>
							<td>${clientorder.firstName} ${clientorder.lastName}</td>
							<td>${clientorder.experiencedLevel}</td>
							<td>${clientorder.email}</td>
							<td>${clientorder.contactNo1}/${clientorder.contactNo2}</td>
							<td>${clientorder.bikeNo}</td>

						</tr>
					</c:forEach>

				</table>
				

		</form:form>
		
		<br><br>
		
		
		
		<form:form method="POST" class="form-horizontal" style="overflow-x:hidden"  modelAttribute="assigntech" action="/techassign"  id="assignForm1">


					<div class="form-group row"
						style="margin-left: 25%; margin-top: 2%">
						<label style="width: 200px" for="clienOrdID">Order ID</label>
						<div class="col-sm-4" style="margin-left: 12%">
							<form:input type="text" class="form-control" path="clienOrdID" name="clienOrdID"
								id="clienOrdID"  readonly="true" />
							<div class="has-error">
								<form:errors path="clienOrdID" class="help-inline" />
							</div>
						</div>

					</div>
					
					
					
					<div class="form-group row " style="margin-left: 25%; margin-top: 2%">
     					<label style="width: 200px" for="techID">Technician ID</label>
   						<div class="col-sm-4" style="margin-left: 12%">
      						<div class="input-group">
						  		<select class="custom-select form-control" name="techID" id="techID">
							    	<option value=-1>Choose Id</option>
							    	<%
							    		try
							    		{
											String query ="select e.empcode from employee e, other_emps oe where e.designation='Technician' AND oe.availability=1 AND  e.empID=oe.empOTId";
							    			Class.forName("com.mysql.jdbc.Driver").newInstance();
							    			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/automatedbarcode_database?useSSL=false","root","root");
							    			Statement stm = con.createStatement();
							    			ResultSet rs = stm.executeQuery(query);
							    			while(rs.next()){
							    				
							    				%><option value="<%=rs.getString("empcode")%>"><%=rs.getString("empcode")%></option>
							    				<% 	    				
							    			}
							    			
							    		}
							    		catch(Exception ex){
							    			
							    			ex.printStackTrace();
							    			
							    		}
							    								    	
							    	%>
						  		</select>
						  		
						  	</div>
						  	
    					</div>
    					
  					</div>
					
					
					
					<!--
 <div class="form-group row" style="margin-left: 25%; margin-top: 2%">
						<label style="width: 200px" for="techID">Technician ID</label>
						<div class="col-sm-4" style="margin-left: 12%">
							<form:input type="text" class="form-control" path="techID" name="techID"
								id="techID"  />
							<div class="has-error">
								<form:errors path="techID" class="help-inline" />
							</div>
						</div>

					</div> 
				 -->

					
					<div class="row" style="margin-left: 42%;width:38%;">
						<div class="col text-center">
							<div class="form-actions ">
								<input type="submit" value="Add Technician"
									class="btn btn-primary btn-sm">
							</div>
						</div>
					</div>
					
					
					
					
					

				</form:form>
		
		
		
		
		
		 

				
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