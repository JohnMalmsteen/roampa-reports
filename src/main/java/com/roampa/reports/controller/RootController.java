package com.roampa.reports.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RootController {
	@RequestMapping("/")
	public String hi(){
		return "index";
	}
}
