

package com.example.demo.model.SalesManagement;


import java.io.Serializable;

import javax.persistence.Id;
import javax.validation.constraints.NotNull;
//import javax.validation.constraints.Size;

 public class   Sales  extends Employee implements Serializable  {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

@Id
private int salesID;

private String salesCode;

private String status;

private String dateCompleted;

private String techID;

private String driverID;

private double totalAmount;
@NotNull
private String orID;


public int getSalesID() {
	return salesID;
}
public void setSalesID(int salesID) {
	this.salesID = salesID;
}
public String getSalesCode() {
	return salesCode;
}
public void setSalesCode(String salesCode) {
	this.salesCode = salesCode;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public String getDateCompleted() {
	return dateCompleted;
}
public void setDateCompleted(String dateCompleted) {
	this.dateCompleted = dateCompleted;
}
public String getTechID() {
	return techID;
}
public void setTechID(String techID) {
	this.techID = techID;
}
public String getDriverID() {
	return driverID;
}
public void setDriverID(String driverID) {
	this.driverID = driverID;
}
public double getTotalAmount() {
	return totalAmount;
}
public void setTotalAmount(double totalAmount) {
	this.totalAmount = totalAmount;
}
public String getOrID() {
	return orID;
}
public void setOrID(String orID) {
	this.orID = orID;
}





}
