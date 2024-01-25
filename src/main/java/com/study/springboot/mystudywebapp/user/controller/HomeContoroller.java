package com.study.springboot.mystudywebapp.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeContoroller {

	@GetMapping("/")
	public String home() {
		return "home";
	}
	
}
