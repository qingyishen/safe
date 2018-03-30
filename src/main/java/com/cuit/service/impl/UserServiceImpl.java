package com.cuit.service.impl;

import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cuit.dao.UserMapper;
import com.cuit.domain.User;
import com.cuit.service.UserService;


@Service("userService")
public class UserServiceImpl implements UserService{

	@Resource
	private UserMapper um;
	
	@Override
	public Set<String> getRolesByUsername(String username) {
		return um.getRolesByusername(username);
	}

	@Override
	public Set<String> getPermissionsByUsername(String username) {
		return um.getPermissionsByusername(username);
	}

	@Override
	public User getUserByUsername(String username) {
		return um.getUserByusername(username);
	}

	@Override
	public void addUser(User user) {
		um.addUser(user);
	}

}
