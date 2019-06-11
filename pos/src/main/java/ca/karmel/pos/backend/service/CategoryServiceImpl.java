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
	public List<Category> getCustomers() {
		return null;
	}

	@Override
	@Transactional
	public void saveCategory(Category theCategory) {
	}

	@Override
	@Transactional
	public Category getCategory(int theId) {		
		return null;
	}

	@Override
	public void deleteCategory(int theId) {
	}

	@Override
	@Transactional
	public List<Category> searchCategorys(String theSearchName) {
		return null;
	}
}