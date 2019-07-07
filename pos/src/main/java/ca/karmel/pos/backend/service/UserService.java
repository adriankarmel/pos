package ca.karmel.pos.backend.service;

import java.util.List;

import ca.karmel.pos.backend.entity.User;

public interface UserService {
	public List<User> getUsers();

	public void saveUser(User theUser);

	public User getUser(int theId);
	
	public List<User> getUserById(int theId);

	public void deleteUser(int theId);

	public List<User> searchUsers(String theSearchName);
}
