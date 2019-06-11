package ca.karmel.pos.backend.service;

import org.springframework.stereotype.Service;
import ca.karmel.pos.backend.entity.Config;

@Service
public interface ConfigService {
	
	public void saveConfig(Config theConfig);

	public Config getConfig(int theId);

}
