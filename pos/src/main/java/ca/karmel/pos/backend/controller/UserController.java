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

import ca.karmel.pos.backend.entity.User;
import ca.karmel.pos.backend.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;

	@RequestMapping("/list")
	public String listUsers(Model theModel) {

		List<User> theUser = userService.getUsers();

		theModel.addAttribute("users", theUser);

		return "users";
	}
	
	@RequestMapping("/update") 
    public String updateUser(@RequestParam("userId") int theId,
				Model theModel) {
			
		// get the User from our service
		User theUser = userService.getUser(theId);	
		
		// set User as a model attribute to pre-populate the form
		theModel.addAttribute("user", theUser);
		
		// send over to our form		
		 return "user"; 
	}	

	@RequestMapping("/new")
	public String newUser(Model theModel) {

		User theUser = new User();

		theModel.addAttribute("user", theUser);

		return "user";
	}

	@RequestMapping("/save")
	public String saveUser(@Valid @ModelAttribute("user") User theUser, BindingResult result) {
	
		if (result.hasErrors()) {
			return "user";
		}
		
		// save the User using our service
		userService.saveUser(theUser);
		
		return "redirect:/user/list";
	}
	
	@PostMapping("/search")	
	public String searchUsers(@RequestParam("theSearchName") String theSearchName,
									Model theModel) {

		// search Users from the service
		List<User> theUsers = userService.searchUsers(theSearchName);
				
		// add the Users to the model
		theModel.addAttribute("users", theUsers);

		return "users";		
	}
	
	@GetMapping("/delete")
	public String deleteUser(@RequestParam("UserId") int theId) {
		
		// delete the User
		userService.deleteUser(theId);
		
		return "users";
	}		

}
