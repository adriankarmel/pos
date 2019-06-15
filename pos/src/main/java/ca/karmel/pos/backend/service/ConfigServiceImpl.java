package ca.karmel.pos.backend.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ca.karmel.pos.backend.dao.ConfigDAO;
import ca.karmel.pos.backend.entity.Config;

@Service
public class ConfigServiceImpl implements ConfigService {

	@Autowired
	private ConfigDAO configDAO;
	
	@Override
	@Transactional
	public void saveConfig(Config theConfig) {
		configDAO.saveConfig(theConfig);
	}

	@Override
	@Transactional
	public Config getConfig(int theId) {	
		return configDAO.getConfig(theId);
	}
}