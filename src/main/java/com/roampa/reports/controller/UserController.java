package com.roampa.reports.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.roampa.reports.model.User;
import com.roampa.reports.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/user/list")
	public void userList(Model model){
		List<User> userList = userService.getUserList();
		model.addAttribute("userList", userList);
	}

}
