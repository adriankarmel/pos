package ca.karmel.pos.backend.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import ca.karmel.pos.backend.entity.Customer;
import ca.karmel.pos.backend.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping("/list")
	public String listCustomers(Model theModel) {
		
		List<Customer> theCustomer = customerService.getCustomers();
		
		theModel.addAttribute("customers", theCustomer);
	
		return "customers";
	}
	
	/*
	 * @RequestMapping("/update") public String updateCustomer(Model theModel) {
	 * 
	 * List<Customer> theCustomer = customerService.getCustomers();
	 * 
	 * theModel.addAttribute("customers", theCustomer);
	 * 
	 * return "customer"; }
	 */
	
	@RequestMapping("/new")
	public String newCustomer(Model theModel) {
		
		
		
		Customer theCustomer = new Customer();		  
		theModel.addAttribute("customer", theCustomer);
		
		return "customer";
	}
	
	@RequestMapping("/save")
	public String saveCustomer(@ModelAttribute("customer") Customer theCustomer, @Valid Customer customer, BindingResult result) {
		
		// save the customer using our service
		//customerService.saveCustomer(theCustomer);
		
		if(result.hasErrors()) {
			return "customer";
		}
		
		return "redirect:/customer/list";
	}
	
}