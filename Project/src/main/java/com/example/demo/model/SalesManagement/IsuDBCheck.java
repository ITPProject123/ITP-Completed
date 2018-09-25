package com.example.demo.model.SalesManagement;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;


//Control+shift+o - shortcut to import dependencies
@Entity
public class IsuDBCheck implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	
	private int age;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

}
