package com.study.springboot.mystudywebapp.login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class LoginController {

	private AuthenticationService authenticationService;
	
	public LoginController(AuthenticationService authenticationService) {
		super();
		this.authenticationService = authenticationService;
	}

	@GetMapping("login")
	public String loginPage() {
		
		return "login";
	}
	
	@PostMapping("login")
	public String goWelcomePage(@RequestParam String name, 
			@RequestParam String password, ModelMap model) {
		
		// 인증 로직, 유효성 검사
		if(authenticationService.authenticate(name, password)) {
		
			model.put("name", name);
			
			return "welcome";
		}
		
		model.put("errorMessage", "Invalid Credentials! Please try again.");
		return "login";
	}
	
}
	