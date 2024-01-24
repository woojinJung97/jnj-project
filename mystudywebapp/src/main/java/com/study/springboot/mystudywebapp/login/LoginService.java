package com.study.springboot.mystudywebapp.login;

import java.util.HashMap;

public interface LoginService {

	UserDto login(HashMap<String, Object> map);
	
}
