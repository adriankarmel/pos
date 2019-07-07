package ca.karmel.pos.backend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ca.karmel.pos.backend.dao.UserDAO;
import ca.karmel.pos.backend.entity.User;

@Service
public class UserServiceImpl implements UserService {	

	@Autowired
	private UserDAO UserDAO;
	
	@Override
	@Transactional
	public List<User> getUsers() {
		return UserDAO.getUsers();
	}

	@Override
	@Transactional
	public void saveUser(User theUser) {
		UserDAO.saveUser(theUser);
	}

	@Override
	@Transactional
	public User getUser(int theId) {
		return UserDAO.getUser(theId);
	}

	@Override
	@Transactional
	public void deleteUser(int theId) {
		UserDAO.deleteUser(theId);
	}

	@Override
	@Transactional
	public List<User> searchUsers(String theSearchName) {
		return UserDAO.searchUsers(theSearchName);
	}

	@Override
	@Transactional
	public List<User> getUserById(int theId) {
		return UserDAO.getUserById(theId);
	}
}
