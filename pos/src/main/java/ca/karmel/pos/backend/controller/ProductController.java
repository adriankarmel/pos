package ca.karmel.pos.backend.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ca.karmel.pos.backend.entity.Customer;
import ca.karmel.pos.backend.entity.Product;
import ca.karmel.pos.backend.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
		
	@Autowired private ProductService productService;
	 
	@RequestMapping("/list")
	public String listProducts(Model theModel) {
		
	   List<Product> theProduct = productService.getProducts();
		
	   theModel.addAttribute("product", theProduct);
	
	   return "products";
	}
	
	 @RequestMapping("/update") 
	 public String updateProduct(@RequestParam("productId") int theId,
				Model theModel) {
			
		// get the customer from our service
		Product theProduct = productService.getProduct(theId);	
		
		// set customer as a model attribute to pre-populate the form
		theModel.addAttribute("product", theProduct);
		
		// send over to our form		
		 return "product"; 
	 }
	
	@RequestMapping("/new")
	public String newProduct(Model theModel) {
		
		Product theProduct = new Product();
		  
	    theModel.addAttribute("product", theProduct);
		 
		return "product";
	}
	
	@RequestMapping("/save")
	public String saveProduct(@Valid @ModelAttribute("product") Product theProduct, BindingResult result) {
	
		if (result.hasErrors()) {
			return "product";
		}
		
		// save the product using our service
		productService.saveProduct(theProduct);
		
		return "redirect:/product/list";
	}
	
	@PostMapping("/search")
	public String searchProducts(@RequestParam("theSearchName") String theSearchName,
									Model theModel) {

		// search product from the service
		List<Product> theProducts = productService.searchProducts(theSearchName);
				
		// add the product to the model
		theModel.addAttribute("products", theProducts);

		return "products";		
	}
	
	@GetMapping("/delete")
	public String deleteProduct(@RequestParam("productId") int theId) {
		
		// delete the product
		productService.deleteProduct(theId);
		
		return "products";
	}	
}