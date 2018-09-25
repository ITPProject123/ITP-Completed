<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false" %> 
<%  
int w,x,y,z;

	Class.forName("com.mysql.jdbc.Driver");
	Connection con =DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/automatedbarcode_database","root","root");
	Statement st = con.createStatement();
	
	String query1 = "Select Count(*) from appointment where appdate BETWEEN '2018-09-1' AND '2018-09-30'";
		ResultSet rs1 = st.executeQuery(query1);
		String Countrow1="";
		while(rs1.next()){
			
			Countrow1 = rs1.getString(1);
			
		}
		
		
	w= Integer.parseInt(Countrow1);	
	
	
	String query2 = "Select Count(*) from appointment where appdate BETWEEN '2018-10-1' AND '2018-10-31'";
	ResultSet rs2 = st.executeQuery(query2);
	String Countrow2="";
	while(rs2.next()){
		
		Countrow2 = rs2.getString(1);
		
	}
	
  	x= Integer.parseInt(Countrow2);	
  	
  	
  	
	String query3 = "Select Count(*) from appointment where appdate BETWEEN '2018-11-1' AND '2018-11-30'";
	ResultSet rs3 = st.executeQuery(query3);
	String Countrow3="";
	while(rs3.next()){
		
		Countrow3 = rs3.getString(1);
		
	}
	
  	y= Integer.parseInt(Countrow3);	

  	
		String query4 = "Select Count(*) from appointment where appdate BETWEEN '2018-12-1' AND '2018-12-31'";;
		ResultSet rs4 = st.executeQuery(query4);
		String Countrow4="";
		while(rs4.next()){
			
			Countrow4 = rs4.getString(1);
			
		}
		
	z =	Integer.parseInt(Countrow4);
	
	%> 
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/custom.css">
    <script src="js/proper.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/Chart.bundle.min.js"></script>
<title>Visitor Management</title>
</head>


<body>
<div class="container-fluid" style="height:2000px">
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
		<h1 style="text-align: center;">Visitor Management</h1>
		<br>
		<h2 style="text-align: center;">Number of visitors visited in a month</h2>
		<br>
		<div class="row" >
		<div class="col-md-8 text-center" style="margin-left: 260px">
	      <div id="canvas-holder" style="width:100%" >
	
		<canvas id="app-chart"></canvas>
	</div>
	</div>
	</div>
	
<script type="text/javascript">



new Chart(document.getElementById("app-chart"), {
    type: 'pie',
    data: {
      labels: ["September", "October", "November","December"],
      datasets: [
        {
          label: "Number of Visitors Per Month",
          backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#ffee32"],
          data: [<%=w%>,<%=x%>,<%=y%>,<%=z%>]
        }
      ]
    },
    options: {
      legend: { display: false },
      title: {
        display: true,
        text: 'Number of Visitors Per Month'
      }
    }
})


</script>

      <div class="graph" style="margin-left: 38%;margin-top: 2%">
      <div class="col-sm-offset-2 col-sm-10">
     <a href="monthlyrep"><button type="submit" value = "submit" class="btn btn-primary">Generate Detailed Monthly Report</button></a>
 
      </div>
      </div>   
</div>
 <footer class="page-footer" style="background-color:#5c5d60;">
	<div class="footer-copyright text-center py-3">Copyright © 2018  Automated Barcode Solutions (Pvt) Ltd . All rights reserved</div>
  </footer>
	

</body>
</html>