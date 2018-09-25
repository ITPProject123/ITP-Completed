<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
  <%@ page isELIgnored="false" %> 
   <%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%> 
  
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="/css/bootstrap.css">
	<link rel="stylesheet" href="/css/glyphican.css">
	<link rel="stylesheet" href="/css/jquery.datetimepicker.min.css">
	<link rel="stylesheet" href="/css/custom.css">
    <script src="/js/jquery.js"></script>
    <script src="/js/proper.js"></script>
	<script src="/js/bootstrap.js"></script>
	<script type="text/javascript" src="/js/bootstrapValidator.js"></script>
	<script src="/js/jquery.datetimepicker.full.js"></script>
	 	
	<title>SignIn</title>
</head>

<body>
	<div class="container-fluid" style="height: 1500px">
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
							    <a href="#">ClientOrder</a>
							    <a href="SupplierOrder">SupplierOrder</a>
							    
						       	<a href="EditSupplierOrder">Edit Supplier Order</a>
						       	<a href="ViewClientOrder">View Client Orders</a>
						       	<div class="dropdown-divider"></div>
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
					<h2 align="middle" style="margin-top: 2%">Client Order</h2>
			
				<form:form method="POST" modelAttribute="clientOrder" id="validateForm1" class="form-horizontal" action="submit">
				
  	<!-- 		<div class="form-group row" style="margin-left: 30%;margin-top: 3%">
    				<label class="control-label col-sm-2" for="id">Client ID</label>
    					<div class="col-sm-4">
      						<input type="text" name="id" class="form-control" id="id" placeholder="Enter Client ID" value="123" />
    					</div>
 	 			</div>
 	 			
 	 			 -->	
 	 			
 	 			
 	 			
 	 			
 	 			<div class="form-group row"  style="margin-left: 30%;margin-top: 4%">
    				<label class="control-label col-sm-2" for="id">Client Name</label>
    					<div class="col-sm-4"> 
							<select  name="id" class="form-control" id="id" >
      							<option value=""></option>
      							
      							<%
      							try
					    		{
					    			String query ="select clientID, name from client";
					    			Class.forName("com.mysql.jdbc.Driver").newInstance();
					    			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/automatedbarcode_database?useSSL=false","root","vimanga123");
					    			Statement stm = con.createStatement();
					    			ResultSet rs = stm.executeQuery(query);
					    			while(rs.next()){
					    				
					    				%><option value="<%=rs.getString("clientID")%>"><%=rs.getString("name") %></option>
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
  				
 	 			
  				
  				<div class="form-group row"  style="margin-left: 30%;margin-top: 4%">
    				<label class="control-label col-sm-2" for="location">Client Location</label>
    					<div class="col-sm-4"> 
      						<input type="text" name="location" class="form-control"  id="location" placeholder="Enter location" />
    					</div>
  				</div>
  				
  	<!-- 			<div class="form-group row"  style="margin-left: 30%;margin-top: 4%">
    				<label class="control-label col-sm-2" for="item">Item</label>
    					<div class="col-sm-4"> 
      						<input type="text" name="item" class="form-control" id="item" placeholder="Enter Item" data-validation="number" />
    					</div>
  				</div>
  		 -->		
  				
  				
  				
  				<div class="form-group row"  style="margin-left: 30%;margin-top: 4%">
    				<label class="control-label col-sm-2" for="item">Device</label>
    					<div class="col-sm-4"> 
							<select  name="item" class="form-control" id="item" >
      							<option value=""></option>
      							
      							<%
      							try
					    		{
					    			String query ="select deviceID from device";
					    			Class.forName("com.mysql.jdbc.Driver").newInstance();
					    			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/automatedbarcode_database?useSSL=false","root","vimanga123");
					    			Statement stm = con.createStatement();
					    			ResultSet rs = stm.executeQuery(query);
					    			while(rs.next()){
					    				
					    				%><option value="<%=rs.getString("deviceID")%>"><%=rs.getString("deviceID") %></option>
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
  				
  				
  				
  				
  				
  				
  				<div class="form-group row"  style="margin-left: 30%;margin-top: 4%">
    				<label class="control-label col-sm-2" for="quantity">Quantity</label>
    					<div class="col-sm-4"> 
      						<input type="text" name="quantity" class="form-control" id="quantity" placeholder="Enter quantity" data-validation="number" />
    					</div>
  				</div>
  				<div class="form-group row"  style="margin-left: 30%;margin-top: 4%">
    				<label class="control-label col-sm-2" for="exdate">Expected date</label>
    					<div class="col-sm-4"> 
      						<input type="date" name="exdate" class="form-control" id="exdate" placeholder="Enter expected date" />
    					</div>
  				</div>
  				<div class="form-group row"  style="margin-left: 30%;margin-top: 4%">
    				<label class="control-label col-sm-2" for="paytyp">Payment type</label>
    					<div class="col-sm-4"> 
      						<select  name="paytyp" class="form-control" id="paytyp" >
      						<option value="Credit card">Check</option>
							  <option value="Cash">Cash</option>
							  
							</select>
    					</div>
  				</div>

 				<div class="form-group row"  style="margin-left: 30%;margin-top: 4%">
    				<label class="control-label col-sm-2" for="deltyp">Delivery Type</label>
    					<div class="col-sm-4"> 
      						<input type="text" class="form-control" id="deltyp" name="deltyp" placeholder="Enter deltyp" />
    					</div>
  				</div>	 
  	
  				<div class="form-group row"  style="margin-left: 30%;margin-top: 4%">
    				<label class="control-label col-sm-2" for="description">Description</label>
    					<div class="col-sm-4"> 
      						<input type="text" name="description" class="form-control" id="description" placeholder="Enter discription" />
    					</div>
  				</div>
	 			<div class="form-group" style="margin-left: 42%;margin-top: 5%"> 
    				<div class="col-sm-offset-2 col-sm-10">
      					<button type="submit" id="submit" class="btn btn-primary">Submit</button><br><br>
      					<button type="reset" class="btn btn-primary">Reset</button>
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
					
					paytyp: {
						validators: {
							notEmpty: {
								message: 'Select payment type'
							}
						}
					},
					
					exdate: {
						validators: {
							notEmpty: {
								message: 'Select date'
							}
						}
					},
					
					id: {
						validators: {
							stringLength: {
								max: 3,
								min: 3,
								message: 'Enter only 3 Numbers'
							},
							
							notEmpty: {
								message: 'Enter Client Id'
							}
							
							
						}
					},
		
					location: {
						validators: {
							notEmpty: {
								message: 'Enter location'
							}
							
						}
					},
					
					item: {
						validators: {
							notEmpty: {
								message: 'Enter item'
							}
						}
					},
					
					quantity: {
						validators: {
							notEmpty: {
								message: 'Enter item'
							}
						},
						
						
					},
					
					deltyp: {
						validators: {
							notEmpty: {
								message: 'Enter item'
							}
						},
						
						
					},
		
					
					
					},
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