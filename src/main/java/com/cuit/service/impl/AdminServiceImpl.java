package com.cuit.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cuit.dao.AdminMapper;
import com.cuit.domain.Admin;
import com.cuit.service.AdminService;

@Service("as")
public class AdminServiceImpl implements AdminService{
	
	@Resource  
	private AdminMapper am;

	@Override
	public Admin login(String aname, String password) {
		return this.am.findAdminByNameAndPwd(aname,password);
	}
}
