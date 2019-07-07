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

import ca.karmel.pos.backend.entity.Category;
import ca.karmel.pos.backend.service.CategoryService;

@Controller
@RequestMapping("/category")
public class CategoryController {	

	@Autowired
	private CategoryService categoryService;

	@RequestMapping("/list")
	public String listCategories(Model theModel) {

		List<Category> theCategory = categoryService.getCategories();

		theModel.addAttribute("categories", theCategory);

		return "categories";
	}
	
	 @RequestMapping("/update") 
	 public String updateCategory(@RequestParam("categoryId") int theId, Model theModel) {
			
		// get the category from our service
		 Category theCategory = categoryService.getCategory(theId);	
		
		// set category as a model attribute to pre-populate the form
		theModel.addAttribute("category", theCategory);
		
		// send over to our form		
		 return "category"; 
	 }
	

	@RequestMapping("/new")
	public String newCategory(Model theModel) {

		Category theCategory = new Category();

		theModel.addAttribute("category", theCategory);

		return "category";
	}

	@RequestMapping("/save")
	public String saveCategory(@Valid @ModelAttribute("category") Category theCategory, BindingResult result) {
	
		if (result.hasErrors()) {
			return "category";
		}
		
		// save the category using our service
		categoryService.saveCategory(theCategory);
		
		return "redirect:/category/list";
	}
	
	@PostMapping("/search")
	public String searchCategories(@RequestParam("theSearchName") String theSearchName,
									Model theModel) {

		// search categories from the service
		List<Category> theCategories = categoryService.searchCategories(theSearchName);
				
		// add the categories to the model
		theModel.addAttribute("category", theCategories);

		return "category";		
	}
	
	@GetMapping("/delete")
	public String deleteCategory(@RequestParam("categoryId") int theId) {
		
		// delete the category
		categoryService.deleteCategory(theId);
		
		return "categories";
	}		

}
