package com.shop.jwellery.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.jwellery.service.ProductService;

@Controller
@RequestMapping(value = "product")
public class ProductController {

	@Autowired
	ProductService productService;

	@RequestMapping(value = "/{pid}", method = RequestMethod.GET)
	public String home(@PathVariable(value = "pid") int id, ModelMap model, HttpServletRequest request) {
		try {
			model.put("product", productService.findSingleProduct(id));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "productpage";
	}
}