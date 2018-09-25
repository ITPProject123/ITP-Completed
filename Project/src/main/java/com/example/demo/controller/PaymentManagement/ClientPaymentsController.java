package com.example.demo.controller.PaymentManagement;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.dao.PaymentManagement.ClientPaymentsDAO;
import com.example.demo.dao.PaymentManagement.SalesDAO;
import com.example.demo.model.PaymentManagement.ClientCashPayments;
import com.example.demo.model.PaymentManagement.ClientChequePayments;
import com.example.demo.model.PaymentManagement.Sales;

@Controller
public class ClientPaymentsController {

	@Autowired
	private ClientPaymentsDAO client;

	@Autowired
	private SalesDAO sales;

	@RequestMapping(value = "/cashPayments", method = RequestMethod.GET)
	private String NewCustomerCashPayment(ModelMap model) {

		ClientCashPayments c = new ClientCashPayments();
		model.addAttribute("clientCashPayments", c);
		System.out.println("Goo");
		return "/PaymentManagement/Cash_Payments.jsp";
	}

	@RequestMapping(value = "/cashPaySave", method = RequestMethod.POST)
	public String savetoCashPayment(@Valid ClientCashPayments p, BindingResult result, ModelMap model,
			RedirectAttributes redirectattributes) {

		if (result.hasErrors()) {
			return "/PaymentManagement/Cash_Payments.jsp";
		}

		System.out.println("here");
		client.Save(p);
		return "/PaymentManagement/home1.jsp";

	}

	@RequestMapping(value = "/allCashPayments")
	private ModelAndView FindAllCashPayments() {

		System.out.println("Goo");
		List<ClientCashPayments> list = client.getAllCashPayments();
		return new ModelAndView("/PaymentManagement/All_Cash_Payments.jsp", "list", list);
	}

	@RequestMapping(value = "/chequePayments", method = RequestMethod.GET)
	private String newClientChequePayment(ModelMap model) {

		System.out.println("Goo");
		ClientChequePayments client = new ClientChequePayments();

		model.addAttribute("clientChequePayments", client);

		return "/PaymentManagement/Cheque_Payments.jsp";

	}

	@RequestMapping(value = "/chequePaySave", method = RequestMethod.POST)
	public String savetoChequePayment(@Valid ClientChequePayments p, BindingResult result, ModelMap model,
			RedirectAttributes redirectattributes) {

		if (result.hasErrors()) {
			return "/PaymentManagement/Cheque_Payments.jsp";
		}

		System.out.println("here");
		client.saveCheque(p);
		return "redirect:/PaymentManagement/home1.jsp";

	}

	@RequestMapping(value = "/continuePayment")
	private ModelAndView ContinuePayments(int salesId) {

		Sales s = new Sales();

		s = sales.getSalesById(salesId);
		if (s.paymentMethod.equals("CASH")) {

			ClientCashPayments cash = new ClientCashPayments();
			cash.setDate(s.getDate());
			cash.setAmount(s.getTotalAmount());
			cash.setSalesId(s.getSalesId());
			cash.setCustomerName("");
			cash.setDiscount(0.0);

			return new ModelAndView("/PaymentManagement/Cash_Payments.jsp", "clientCashPayments", cash);
		} else if (s.paymentMethod.equals("CHEQUE")) {

			ClientChequePayments cheque = new ClientChequePayments();

			cheque.setAmount(s.getTotalAmount());
			cheque.setBank("");
			cheque.setBankedDate("");
			cheque.setChequeNumber(0);
			cheque.setCustomerName("");
			cheque.setSalesId(s.getSalesId());
			cheque.setStatus("");

			return new ModelAndView("/PaymentManagement/Cheque_Payments.jsp", "clientChequePayments", cheque);
		}

		else {

			return new ModelAndView("/PaymentManagement/Payment_Home.jsp");
		}

	}

	@RequestMapping(value = "/Sales_Last")
	private String LastSalesPage() {

		System.out.println("Goo");

		return "/PaymentManagement/Sales_Last.jsp";
	}
	
	
	
	
	
	
	
	
	@RequestMapping("/paymentDashboard")
	public String paymentdash() {
		
		return "/PaymentManagement/Payment_Dashboard.jsp";
		
	}
	
	
	
	
	
	
	

}
