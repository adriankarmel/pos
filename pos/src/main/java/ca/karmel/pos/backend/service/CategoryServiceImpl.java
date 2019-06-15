package ca.karmel.pos.backend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ca.karmel.pos.backend.dao.CategoryDAO;
import ca.karmel.pos.backend.entity.Category;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryDAO categoryDAO;
	
	@Override
	@Transactional
	public List<Category> getCategories() {
		return categoryDAO.getCategories();
	}

	@Override
	@Transactional
	public void saveCategory(Category theCategory) {
		categoryDAO.saveCategory(theCategory);
	}

	@Override
	@Transactional
	public Category getCategory(int theId) {	
		return categoryDAO.getCategory(theId);
	}

	@Override
	@Transactional
	public void deleteCategory(int theId) {
		categoryDAO.deleteCategory(theId);
	}

	@Override
	@Transactional
	public List<Category> searchCategories(String theSearchName) {
		return categoryDAO.searchCategories(theSearchName);
	}
}