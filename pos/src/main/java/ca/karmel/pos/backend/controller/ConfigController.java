package ca.karmel.pos.backend.controller;


import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ca.karmel.pos.backend.entity.Config;

@Controller
@RequestMapping("/config")
public class ConfigController {
	
	 @RequestMapping("/update") 
	 public String updateConfig(Model theModel) {
		  
		 Config theConfig = new Config();
	  
		 theModel.addAttribute("config", theConfig);
	  
		 return "config";
	 }
}