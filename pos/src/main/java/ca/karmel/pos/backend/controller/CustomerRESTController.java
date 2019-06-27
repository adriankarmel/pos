package ca.karmel.pos.backend.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import ca.karmel.pos.backend.entity.Customer;
import ca.karmel.pos.backend.service.CustomerService;

@RestController
@RequestMapping(value = "/customer", produces = { MediaType.APPLICATION_JSON_VALUE })
public class CustomerRESTController {

	@Autowired
	private CustomerService repository;

	@RequestMapping(value = "/Get/", method = RequestMethod.GET)
	@ResponseBody
	public List<Customer> getListCustomers() {
		return repository.getCustomers();
	}

	 // url ejemplo: http://localhost:8080/pos/customer/GetById/1	 
	 @RequestMapping(value="/GetById/{id}", method = RequestMethod.GET)	 
	 @ResponseBody 
	 public List<Customer> getCustomerById(@PathVariable int id) {
		 return repository.getCustomerById(id); 
	 }
	
	// url ejemplo: http://localhost:8080/pos/customer/Get/ares
	@RequestMapping(value = "/Search/{search}", method = RequestMethod.GET)
	@ResponseBody
	public List<Customer> getSearch(@PathVariable String search) {
		return repository.searchCustomers(search);
	}
	
	// url ejemplo: http://localhost:8080/pos/customer/GetById/1	 
	 @RequestMapping(value="/Put/", method = RequestMethod.PUT)	 
	 @ResponseBody 
	 public String saveCustomer(@Valid @ModelAttribute("customer") Customer theCustomer, BindingResult result) {
		
		if (result.hasErrors()) {
			return "customer";
		}
		return repository.saveCustomer(theCustomer);
		// save the customer using our service
		;		
		
	 }
		
		 
}
