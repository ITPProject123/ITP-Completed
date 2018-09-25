package com.example.demo.model.PaymentManagement;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Sales {

			  @Id
			  public int salesId;
			  
			  public String status;
			  
			  public String date;
			  
			  public String getDate() {
				return date;
			}

			public void setDate(String date) {
				this.date = date;
			}

			public int techID;
			  
			  public int driverID;
			  
			  public double totalAmount;
			  
			  public int orID;
			  
			  public String paymentMethod;

			public String getPaymentMethod() {
				return paymentMethod;
			}

			public void setPaymentMethod(String paymentMethod) {
				this.paymentMethod = paymentMethod;
			}

			public int getSalesId() {
				return salesId;
			}

			public void setSalesId(int salesID) {
				this.salesId = salesID;
			}

			public String getStatus() {
				return status;
			}

			public void setStatus(String status) {
				this.status = status;
			}

		

			public int getTechID() {
				return techID;
			}

			public void setTechID(int techID) {
				this.techID = techID;
			}

			public int getDriverID() {
				return driverID;
			}

			public void setDriverID(int driverID) {
				this.driverID = driverID;
			}

			public double getTotalAmount() {
				return totalAmount;
			}

			public void setTotalAmount(double totalAmount) {
				this.totalAmount = totalAmount;
			}

			public int getOrID() {
				return orID;
			}

			public void setOrID(int orID) {
				this.orID = orID;
			}     
	
	
	
	
	
	
	
	
	
	
	
	
	
}
