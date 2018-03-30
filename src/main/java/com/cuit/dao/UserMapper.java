package com.cuit.dao;

import java.util.Set;

import com.cuit.domain.User;

public interface UserMapper {

	public Set<String> getRolesByusername(String username);
	
	public Set<String> getPermissionsByusername(String username);

	public User getUserByusername(String username);

	public void addUser(User user);
}
