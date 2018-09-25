package com.example.demo.controller.PaymentManagement;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class DashboardController {

	
	
	
	public static int chartX() throws SQLException, ClassNotFoundException 
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/automatedbarcode_database?useSSL=false","root","deshan");
		Statement st = (Statement) con.createStatement();
		
		String query1 = "Select Count(*) from pettycashregister where returnStatus='Pending'";
		ResultSet rs1 = st.executeQuery(query1);
		String Countrow1="";
		while(rs1.next())
		{
			
			Countrow1 = rs1.getString(1);
			
		}
		
		
		return Integer.parseInt(Countrow1);	
	
	}
	

	  
/*	public static int chartY() throws SQLException, ClassNotFoundException 
	{
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/automatedbarcode_database?useSSL=false","root","root");
		Statement st = (Statement) con.createStatement();
		
		String query2 = "Select Count(*) from employee where designation='Driver'";
		ResultSet rs2 = st.executeQuery(query2);
		String Countrow2="";
		while(rs2.next())
		{
			
			Countrow2 = rs2.getString(1);
			
		}
		
	  	return Integer.parseInt(Countrow2);	
		
	}	
	*/
	 
	
	
	
	
	
	
	
	
	
	
	
	
}
