package ca.karmel.pos.backend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ca.karmel.pos.backend.dao.CustomerDAO;
import ca.karmel.pos.backend.entity.Customer;

import org.springframework.transaction.annotation.Transactional;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDAO customerDAO;
	
	@Override
	@Transactional
	public List<Customer> getCustomers() {
		return customerDAO.getCustomers();
	}

	@Override
	@Transactional
	public void saveCustomer(Customer theCustomer) {
		customerDAO.saveCustomer(theCustomer);
	}

	@Override
	@Transactional
	public Customer getCustomer(int theId) {
		return customerDAO.getCustomer(theId);
	}

	@Override
	@Transactional
	public void deleteCustomer(int theId) {
		customerDAO.deleteCustomer(theId);
	}

	@Override
	@Transactional
	public List<Customer> searchCustomers(String theSearchName) {
		return customerDAO.searchCustomers(theSearchName);
	}

	@Override
	@Transactional
	public List<Customer> getCustomerById(int theId) {
		return customerDAO.getCustomerById(theId);
	}
}