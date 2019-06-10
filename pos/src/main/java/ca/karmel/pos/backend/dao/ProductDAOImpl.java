package ca.karmel.pos.backend.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ca.karmel.pos.backend.entity.Customer;
import ca.karmel.pos.backend.entity.Product;

@Repository
public class ProductDAOImpl implements ProductDAO {

	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Product> getProducts() {
		Session currentSession = sessionFactory.getCurrentSession();
		
		// create a query
		Query<Product> theQuery = 
				currentSession.createQuery("FROM Product"
										 + " ORDER BY last_name", Product.class);
		
		// execute query and get result list
		List<Product> product = theQuery.getResultList();
				
		// return the results				
		return product;
	}

	@Override
	public void saveProduct(Product theProduct) {
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// save/upate the Product ... finally LOL
		currentSession.saveOrUpdate(theProduct);	

	}

	@Override
	public Product getProduct(int theId) {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// now retrieve/read from database using the primary key
		Product theProduct = currentSession.get(Product.class, theId);
		
		return theProduct;
	}

	@Override
	public void deleteProduct(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		
		// delete object with primary key
		Query theQuery = 
				currentSession.createQuery("delete from Product where id=:productId");
		theQuery.setParameter("productId", theId);
		
		theQuery.executeUpdate();	

	}

	@Override
	public List<Product> searchProducts(String theSearchName) {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query theQuery = null;
		
		// only search by name if theSearchName is not empty
		
		if (theSearchName != null && theSearchName.trim().length() > 0) {

			// search for firstName or lastName ... case insensitive
			theQuery =currentSession.createQuery("from Product where lower(name) like :theName ", Customer.class);
			theQuery.setParameter("theName", "%" + theSearchName.toLowerCase() + "%");
		}else {
			// theSearchName is empty ... so just get all customers
			theQuery =currentSession.createQuery("from Product", Customer.class);			
		}
		
		// execute query and get result list
		List<Product> products = theQuery.getResultList();
				
		// return the results		
		return products;		
	}

}
