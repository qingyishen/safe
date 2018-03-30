package com.cuit.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.websocket.server.PathParam;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cuit.domain.User;
import com.cuit.service.UserService;
import com.cuit.util.CryptographyUtil;

@Controller
public class AdminController {
	@Resource
	UserService us;
	
	@RequestMapping("/adminLogin")
	public String adminLogin(@PathParam("username") String username,
			@PathParam("password") String password,HttpServletRequest req){
		System.out.println("管理员登录时调用:"+username+"--"+password);
		User user = us.getUserByUsername(username);
		System.out.println("state="+user.getState()+"||roleid="+user.getRoleId());
		Subject subject = SecurityUtils.getSubject();
		if(user.getState()==1) {  
			if(subject.isAuthenticated()==false){
				UsernamePasswordToken token = new UsernamePasswordToken(username, CryptographyUtil.md5(password,"salt"));
				try{
					subject.login(token);
					Session session = subject.getSession();
					System.out.println("sessionId:"+session.getId()+"sessionHost:"+session.getHost()+"sessionTimeout:"+session.getTimeout());
					session.setAttribute("username", username);
					return "success";
				}catch(Exception e){
					e.printStackTrace();
					req.setAttribute("user", user);
					req.setAttribute("errorMsg", "用户名或密码错误！");
					return "adlogin";
				}
			}else{
				return "success";
			}
		}else{
			req.setAttribute("user",user);
			req.setAttribute("errorMsg", "账号未激活");
			return "adlogin";
		}
	}
}
