package com.me.controller;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.me.pojo.User;

@RequestMapping("/user/register.htm")
@Controller
public class RegisterController {
//	@Autowired
//	private ServletContext application; // only static global instances to be AutoWired
//	
//	@PostConstruct
//	public void init() {
//		// initialize global instances
//	}
//
//	@PreDestroy
//	public void destroy() throws Exception {
//		// do cleanup
//	}
	@RequestMapping(method = RequestMethod.GET)
	public String formView(ModelMap model, User user) {
		user.setUsername("username"); // if object has values, these would populate the form view automatically
		user.setPassword("pswd"); // if an existing object populates the form fields, it is called
									// form-backing-object
		return "register-form";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String successView(@ModelAttribute("user") User user, ModelMap model) {
		//no errors, so go to the success view
		System.out.println(user.getUsername());
		System.out.println(user.getPassword());
		return "register-success";
	}

}