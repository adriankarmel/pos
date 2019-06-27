package ca.karmel.pos.backend.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(name="/posf")
public class PosController {
	
	@RequestMapping("/new")
	public String newPOS(Model theModel) {

		return "pos";
	}

}
