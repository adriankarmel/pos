package ca.karmel.pos.backend.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ca.karmel.pos.backend.entity.Config;
import ca.karmel.pos.backend.entity.Customer;

@Repository
public class ConfigDAOImpl implements ConfigDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveConfig(Config theConfig) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theConfig);
		
	}
	
	@Override
	public Config getConfig(int theId) {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// now retrieve/read from database using the primary key
		Config theConfig = currentSession.get(Config.class, theId);
		
		return theConfig;
	}
}