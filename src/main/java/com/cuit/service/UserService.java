package com.cuit.service;

import java.util.Set;

import com.cuit.domain.User;


public interface UserService {
	
	public void addUser(User user);
	
	public Set<String> getRolesByUsername(String username);
	
	public Set<String> getPermissionsByUsername(String username);

	public User getUserByUsername(String username);

}