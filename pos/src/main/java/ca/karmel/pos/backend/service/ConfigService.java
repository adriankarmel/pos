package ca.karmel.pos.backend.service;

import ca.karmel.pos.backend.entity.Config;

public interface ConfigService {
	
	public void saveConfig(Config theConfig);

	public Config getConfig(int theId);

}
