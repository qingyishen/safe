package com.cuit.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cuit.domain.Admin;
import com.cuit.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Resource
	private AdminService as;
	
	@RequestMapping("/showAdmin")
	public String toIndex(HttpServletRequest request,Model model){
		int id = Integer.parseInt(request.getParameter("id"));
		Admin admin = this.as.getUserById(id);
		model.addAttribute("admin", admin);
		return "showAdmin";
	}
}



