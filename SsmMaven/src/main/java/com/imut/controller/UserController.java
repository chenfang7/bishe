package com.imut.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.imut.model.User;
import com.imut.service.IUserService;

@Controller
@RequestMapping("/userController")
public class UserController {
	private IUserService userService;
	
	public IUserService getUserService() {
		return userService;
	}
	@Autowired
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	@RequestMapping("/showUser")
	public String showUser(String id,HttpServletRequest request){
		User user = userService.getUserById(id);
		request.setAttribute("user", user);
		return "showUser";
	}
	
	@RequestMapping("/ziang")
	public String ziang(String id,HttpServletRequest request){
		//User user = userService.getUserById(id);
		User user =new User();
		request.setAttribute("user", user);
		return "ziang";
	}
}
