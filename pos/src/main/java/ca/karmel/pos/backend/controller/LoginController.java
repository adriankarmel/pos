package ca.karmel.pos.backend.controller;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ca.karmel.pos.backend.entity.Customer;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	@RequestMapping("/new")
	public String newLogin(Model theModel) {		
	
		return "login";
	}
}