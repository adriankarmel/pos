package ca.karmel.pos.backend.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(name="/sale")
public class SaleController {
	
	@RequestMapping("/new")
	public String newSale(Model theModel) {

		return "sale";
	}

}
