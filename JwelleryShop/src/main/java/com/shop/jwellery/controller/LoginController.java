package com.shop.jwellery.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.jwellery.beans.Customer;
import com.shop.jwellery.service.LoginService;

@Controller
@RequestMapping(value = "/login.html")
public class LoginController {

	@Autowired
	private LoginService loginService;

	@RequestMapping(method = RequestMethod.GET)
	public String loginPage(ModelMap model) {
		return "login";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String login(@ModelAttribute("login") Customer login, HttpSession session, ModelMap model) {
		System.out.println(login.getEmail());
		System.out.println(login.getPassword());
		login = loginService.login(login);

		if (login != null) {
			
			session.setAttribute("email", login.getEmail());
			return "redirect:myProfile.html";
		} else {
			model.addAttribute("error", "Invalid Email id or password.");
			return "login";
		}
	}
}
