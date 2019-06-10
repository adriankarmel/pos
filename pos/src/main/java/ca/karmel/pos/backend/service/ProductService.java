package ca.karmel.pos.backend.service;

import java.util.List;

import ca.karmel.pos.backend.entity.Product;

public interface ProductService {

	public List<Product> getProducts();

	public void saveProduct(Product theProduct);

	public Product getProduct(int theId);

	public void deleteProduct(int theId);

	public List<Product> searchProducts(String theSearchName);	
}