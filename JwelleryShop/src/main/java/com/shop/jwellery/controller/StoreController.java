package com.shop.jwellery.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/store.html")
public class StoreController {

	@RequestMapping(method = RequestMethod.GET)
	public String home(ModelMap model) {

		return "store";
	}
}
