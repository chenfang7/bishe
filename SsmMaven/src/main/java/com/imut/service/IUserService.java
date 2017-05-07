package com.imut.service;

import java.util.List;

import com.imut.model.User;

public interface IUserService {
	
	public User getUserById(String id);
	
	public List<User> getAllUser();
	
	public List<User> getAll();
	
	public List<User> getAll3();
}
