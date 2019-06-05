package ca.karmel.pos.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ca.karmel.pos.backend.entity.Product;;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	/*
	 * @Autowired private CustomerService customerService;
	 */
	@RequestMapping("/list")
	public String listProducts(Model theModel) {
		
	//	List<Customer> theCustomer = customerService.getCustomers();
		
	//	theModel.addAttribute("customers", theCustomer);
	
		return "products";
	}
	
	@RequestMapping("/new")
	public String newProduct(Model theModel) {
		
		Product theProduct = new Product();
		  
	    theModel.addAttribute("product", theProduct);
		 
		return "product";
	}
}
