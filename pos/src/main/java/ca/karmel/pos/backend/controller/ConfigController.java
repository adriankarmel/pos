package ca.karmel.pos.backend.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import ca.karmel.pos.backend.entity.Config;
import ca.karmel.pos.backend.service.ConfigService;

@Controller
@RequestMapping("/config")
public class ConfigController {
	
	@Autowired ConfigService configService;
	
    @RequestMapping("/edit") 
    public String updateConfig(Model theModel) {
		 
    	 int theId = 1;
		 Config theConfig = configService.getConfig(theId);	  
		 theModel.addAttribute("config", theConfig);
	  
		 return "config";
    }
	 
	@RequestMapping("/save")
	public String saveConfig(@Valid @ModelAttribute("config") Config theConfig, BindingResult result) {
	
		if (result.hasErrors()) {
			return "config";
		}
		
		// save the customer using our service
		configService.saveConfig(theConfig);
		
		return "config";
	}
}