package ca.karmel.pos.backend.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/reports")
public class ReportsController {

	
	  @RequestMapping("/list") 
	  public String listCustomers(Model theModel) {
	  
		  // List<Reports> theProduct = productService.getProducts(); //
	//	theModel.addAttribute("reports", null);
	 
		  return "reports"; 
	  }
	 

}
