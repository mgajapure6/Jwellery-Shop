package com.shop.jwellery.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/myProfile.html")
public class CustomerProfile {

	@RequestMapping(method = RequestMethod.GET)
	public String showSignup(ModelMap model) {

		return "customerProfile";
	}
}
