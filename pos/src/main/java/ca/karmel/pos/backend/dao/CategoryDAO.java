package ca.karmel.pos.backend.dao;

import java.util.List;

import ca.karmel.pos.backend.entity.Category;

public interface CategoryDAO {
	
	public List<Category> getCategories();
	
	public void saveCategory(Category theCategory);

	public Category getCategory(int theId);

	public void deleteCategory(int theId);

	public List<Category> searchCategories(String theSearchName);

}
