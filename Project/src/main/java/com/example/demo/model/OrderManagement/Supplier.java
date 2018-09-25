package com.example.demo.model.OrderManagement;

import java.sql.Date;

import javax.persistence.Entity;

@Entity
public class Supplier {

	private int id;
	private String name;
	private String location;
	private int Item;
	private Date regDate;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getItem() {
		return Item;
	}
	public void setItem(int item) {
		Item = item;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getId() {
		return id;
	}
	public void setId(int iD) {
		id = iD;
	}
	
	
}
