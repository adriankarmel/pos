package ca.karmel.pos.backend.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ca.karmel.pos.backend.entity.User;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<User> getUsers() {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// create a query
		Query<User> theQuery = 
				currentSession.createQuery("FROM User"
										 + " ORDER BY nickname", User.class);
		
		// execute query and get result list
		List<User> User = theQuery.getResultList();
				
		// return the results				
		return User;
	}

	@Override
	public void saveUser(User theUser) {
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// save/upate the User ... finally LOL
		currentSession.saveOrUpdate(theUser);	
	}

	@Override
	public User getUser(int theId) {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// now retrieve/read from database using the primary key
		User theUser = currentSession.get(User.class, theId);
		
		return theUser;
	}

	@Override
	public void deleteUser(int theId) {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// delete object with primary key
		Query theQuery = 
				currentSession.createQuery("delete from User where id=:UserId");
		theQuery.setParameter("UserId", theId);
		
		theQuery.executeUpdate();		
	}

	@Override
	public List<User> searchUsers(String theSearchName) {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query theQuery = null;
		// only search by name if theSearchName is not empty
		
		if (theSearchName != null && theSearchName.trim().length() > 0) {
			// search for firstName or lastName ... case insensitive
			theQuery = currentSession.createQuery("from User where lower(nickname) like :theName", User.class);
			theQuery.setParameter("theName", "%" + theSearchName.toLowerCase() + "%");
		}
		else {
			// theSearchName is empty ... so just get all Users
			theQuery = currentSession.createQuery("from User", User.class);			
		}
		
		// execute query and get result list
		List<User> Users = theQuery.getResultList();
				
		// return the results		
		return Users;				
	}

	@Override
	public List<User> getUserById(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();		
		
		Query<User> theQueryById = currentSession.createQuery("FROM User WHERE id = :theId", User.class);
		theQueryById.setParameter("theId", theId);
	
		// execute query and get result list
		List<User> UserById = theQueryById.getResultList();
				
		// return the results				
		return UserById;
	}
}
