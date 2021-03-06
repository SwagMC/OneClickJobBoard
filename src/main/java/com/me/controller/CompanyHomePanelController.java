package com.me.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping("/company-homepanel.htm")
@Controller
public class CompanyHomePanelController {

	@RequestMapping(method = RequestMethod.GET)
	public String formView(ModelMap model, HttpSession session) {
		if (session.getAttribute("user") == null) {
			return "redirect:login.htm";
		}
		return "home-panel-company";
	}
}
