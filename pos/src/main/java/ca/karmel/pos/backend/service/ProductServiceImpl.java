package ca.karmel.pos.backend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import ca.karmel.pos.backend.dao.ProductDAO;
import ca.karmel.pos.backend.entity.Product;

public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDAO;
	
	@Override
	@Transactional
	public List<Product> getProducts() {
		return productDAO.getProducts();
	}

	@Override
	@Transactional
	public void saveProduct(Product theProduct) {
		productDAO.saveProduct(theProduct);		
	}

	@Override
	@Transactional
	public Product getProduct(int theId) {
		return productDAO.getProduct(theId);
	}

	@Override
	@Transactional
	public void deleteProduct(int theId) {
		productDAO.deleteProduct(theId);		
	}

	@Override
	@Transactional
	public List<Product> searchProducts(String theSearchName) {
		return productDAO.searchProducts(theSearchName);
	}	
}