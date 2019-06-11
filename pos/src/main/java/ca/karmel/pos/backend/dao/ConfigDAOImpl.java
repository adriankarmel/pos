package ca.karmel.pos.backend.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import ca.karmel.pos.backend.entity.Config;

public class ConfigDAOImpl implements ConfigDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveConfig(Config theConfig) {
	}
	
	@Override
	public Config getConfig(int theId) {
		return null;
	}
}