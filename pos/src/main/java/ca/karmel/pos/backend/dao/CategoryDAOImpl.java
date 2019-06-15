package ca.karmel.pos.backend.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ca.karmel.pos.backend.entity.Category;

@Repository
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Category> getCategories() {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		// create a query
		Query<Category> theQuery = 
				currentSession.createQuery("FROM Category"
										 + " ORDER BY name", Category.class);
		
		// execute query and get result list
		List<Category> category = theQuery.getResultList();
				
		// return the results				
		return category;
	}

	@Override
	public void saveCategory(Category theCategory) {
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// save/upate the Category ... finally LOL
		currentSession.saveOrUpdate(theCategory);			
	}

	@Override
	public Category getCategory(int theId) {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// now retrieve/read from database using the primary key
		Category theCategory = currentSession.get(Category.class, theId);
		
		return theCategory;
	}

	@Override
	public void deleteCategory(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		
		// delete object with primary key
		Query theQuery = 
				currentSession.createQuery("delete from Category where id=:categoryId");
		theQuery.setParameter("categoryId", theId);
		
		theQuery.executeUpdate();	
		
	}

	@Override
	public List<Category> searchCategories(String theSearchName) {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query theQuery = null;
		
		//
		// only search by name if theSearchName is not empty
		//
		if (theSearchName != null && theSearchName.trim().length() > 0) {

			// search for firstName or lastName ... case insensitive
			theQuery =currentSession.createQuery("from Category where lower(name) like :theName", Category.class);
			theQuery.setParameter("theName", "%" + theSearchName.toLowerCase() + "%");

		}
		else {
			// theSearchName is empty ... so just get all Category
			theQuery = currentSession.createQuery("from Category", Category.class);			
		}
		
		// execute query and get result list
		List<Category> categories = theQuery.getResultList();
				
		// return the results		
		return categories;				
	}

}
