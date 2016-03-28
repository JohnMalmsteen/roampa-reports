package com.roampa.reports.service;

import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.roampa.reports.model.User;

@Service
public class UserService {
	private List<User> userList = new LinkedList<User>();
	
	public UserService() {
		User user1 = new User();
		User user2 = new User();
		User user3 = new User();
		
		user1.setUsername("bob");
		user1.setGender('m');
		user1.setAddress1("some string");
		user1.setCity("galway");
		user1.setEmail("sdfg.adfas");
		
		user2.setUsername("joe");
		user2.setGender('f');
		user2.setAddress1("some addres");
		user2.setCompanyid(2);
		user2.setEmail("some email");
		
		user3.setUsername("user");
		user3.setGender('x');
		
		userList.add(user2);
		userList.add(user1);
		userList.add(user3);
	}
	
	public List<User> getUserList(){
		return userList;
	}
}
