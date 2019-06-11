package ca.karmel.pos.backend.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import ca.karmel.pos.backend.dao.ConfigDAO;
import ca.karmel.pos.backend.entity.Config;

public class ConfigServiceImpl implements ConfigService {

	@Autowired
	private ConfigDAO configDAO;
	
	@Override
	@Transactional
	public void saveConfig(Config theConfig) {
		// TODO Auto-generated method stub

	}

	@Override
	@Transactional
	public Config getConfig(int theId) {
		// TODO Auto-generated method stub
		return null;
	}

}
