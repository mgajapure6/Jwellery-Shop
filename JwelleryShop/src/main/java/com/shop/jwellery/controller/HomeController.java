package com.shop.jwellery.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.jwellery.service.ProductService;

@Controller
public class HomeController {

	@Autowired
	ProductService productService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(ModelMap model) {
		model.put("action", "home");
		try {
			model.put("productList1", productService.findAllProduct());
			model.put("productList2", productService.findAllProduct());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "home";
	}

}
