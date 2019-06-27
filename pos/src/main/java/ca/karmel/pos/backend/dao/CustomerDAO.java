package ca.karmel.pos.backend.dao;

import java.util.List;

import ca.karmel.pos.backend.entity.Customer;

public interface CustomerDAO {

	public List<Customer> getCustomers();
	
	public void saveCustomer(Customer theCustomer);

	public Customer getCustomer(int theId);
	
	public List<Customer> getCustomerById(int theId);

	public void deleteCustomer(int theId);

	public List<Customer> searchCustomers(String theSearchName);
}