package com.shop.jwellery.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.jwellery.beans.Customer;
import com.shop.jwellery.service.SignupService;

@Controller
@RequestMapping(value = "/signup.html")
public class SignupController {

	@Autowired
	private SignupService signupService;

	@RequestMapping(method = RequestMethod.GET)
	public String showSignup(ModelMap model) {

		return "signup";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String createSignup(@ModelAttribute("customer") Customer customer, ModelMap model,
			HttpServletRequest request, HttpSession session) {
		try {
			signupService.createCustomer(customer);
			model.addAttribute("success", "You have Register Successfully. Now login first.");
			return "login";
		} catch (Exception e) {
			model.addAttribute("error", "Unable to Sign up. Please try again.");
			return "signup";
		}
	}
}
