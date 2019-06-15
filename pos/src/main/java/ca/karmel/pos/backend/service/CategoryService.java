package ca.karmel.pos.backend.service;

import java.util.List;

import ca.karmel.pos.backend.entity.Category;

public interface CategoryService {
	
	public List<Category> getCategories();

	public void saveCategory(Category theCategory);

	public Category getCategory(int theId);

	public void deleteCategory(int theId);

	public List<Category> searchCategories(String theSearchName);

}