package ca.karmel.pos.backend.controller;

import java.util.List;

import javax.enterprise.inject.Produces;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

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
	
	@RequestMapping("/update") 
    public String updateCustomer(@RequestParam("customerId") int theId,
				Model theModel) {
			
		// get the customer from our service
		Customer theCustomer = customerService.getCustomer(theId);	
		
		// set customer as a model attribute to pre-populate the form
		theModel.addAttribute("customer", theCustomer);
		
		// send over to our form		
		 return "customer"; 
	}	

	@RequestMapping("/new")
	public String newCustomer(Model theModel) {

		Customer theCustomer = new Customer();

		theModel.addAttribute("customer", theCustomer);

		return "customer";
	}

	@RequestMapping("/save")
	public String saveCustomer(@Valid @ModelAttribute("customer") Customer theCustomer, BindingResult result) {
	
		if (result.hasErrors()) {
			return "customer";
		}
		
		// save the customer using our service
		customerService.saveCustomer(theCustomer);
		
		return "redirect:/customer/list";
	}
	
	@PostMapping("/search")	
	public String searchCustomers(@RequestParam("theSearchName") String theSearchName,
									Model theModel) {

		// search customers from the service
		List<Customer> theCustomers = customerService.searchCustomers(theSearchName);
				
		// add the customers to the model
		theModel.addAttribute("customers", theCustomers);

		return "customers";		
	}
	
	@GetMapping("/delete")
	public String deleteCustomer(@RequestParam("customerId") int theId) {
		
		// delete the customer
		customerService.deleteCustomer(theId);
		
		return "customers";
	}		
}