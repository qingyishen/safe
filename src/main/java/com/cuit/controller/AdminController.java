package com.cuit.controller;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cuit.domain.Admin;
import com.cuit.service.AdminService;

@Controller
@RequestMapping("/jsp/admin")
public class AdminController {
	@Resource
	private AdminService as;
	
	@RequestMapping("/login")
	public String login(String aname,String password,Model model){
		Admin admin = as.login(aname, password);
		if(admin!=null){
			model.addAttribute("msg", "登录成功");
			model.addAttribute("aname",aname);
			return "index";
		}else{
			return "login";
		}
	}
}



