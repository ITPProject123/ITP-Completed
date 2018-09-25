package com.example.demo.controller.inventorymanagement;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.example.demo.model.inventorymanagement.Inventory;

@SuppressWarnings("hiding")
@Controller
public class MainController<Inventory> {

	
	@RequestMapping("signin")
	public String SignIn() 
		{
			return "SignIn.jsp";
		}
	
	@RequestMapping("adddeo")
	public String AddDeo() 
		{
			return "AddDEO.jsp";
		}

	@RequestMapping("addtech")
	public String AddTech() 
		{
			return "AddTechnician.jsp";
		}

	@RequestMapping("adddriver")
	public String AddDriver() 
		{
			return "AddDriver.jsp";
		}
	@RequestMapping("remove")
	public String RemoveEmp() 
		{
			return "RemoveEmployee.jsp";
		}
	
	@RequestMapping("profile")
	public String EmpPro() 
		{
			return "EmployeeProfile.jsp";
		}
	
	@RequestMapping("t&a")
	public String TimeAttend() 
		{
			return "Time&Attend.jsp";
		}

	
	@RequestMapping("leave")
	public String Leave() 
		{
			return "Leave.jsp";
		}
	
	@RequestMapping("inventory")
	public String AddDev() 
		{
			return "InventoryForm.jsp";
		}
	
	@RequestMapping("removedev")
	public String RemoveDev() 
		{
			return "RemoveInventory.jsp";
		}
	
	@RequestMapping("updatein")
	public String UpdateInventory() 
		{
			return "UpdateInventory.jsp";
		}
	
	@RequestMapping("chkinventory")
	public String CheckInventory() 
		{
			return "CheckInventory.jsp";
		}
	
	@RequestMapping("viewinventory")
	public String ViewInventory() 
		{
			return "ViewInventory.jsp";
		}

	@RequestMapping("viewdevice")
	public String ViewDevice() 
		{
			return "ViewDevice.jsp";
		}
	
	@RequestMapping("updatedev")
	public String UpdateDevice() 
		{
			return "UpdateDevice.jsp";
		}
}
