package ca.karmel.pos.backend.dao;

import ca.karmel.pos.backend.entity.Config;

public interface ConfigDAO {
	
	public void saveConfig(Config theConfig);

	public Config getConfig(int theId);
}
