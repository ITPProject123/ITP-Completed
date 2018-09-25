package com.example.demo.model.OrderManagement;

import javax.persistence.Entity;

@Entity
public class DashboardCount {

	private String month;
	private int count;
	
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
}
