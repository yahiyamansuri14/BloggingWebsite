package io.marsab.minorproject.service;

import java.util.List;

import io.marsab.minorproject.model.User;


public interface UserService {
	public void saveUser(User user);
	public User getUser(User user);
	//public User getUserName(User user);
	public User getUserByEmail(User user);
	public List<User> getAllUser();
	public int deleteUser(User user);	
}
