package com.shop.jwellery.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.jwellery.service.ProductService;

@Controller
@RequestMapping(value = "/collections.html")
public class CollectionController {

	@Autowired
	ProductService productService;

	@RequestMapping(method = RequestMethod.GET)
	public String home(ModelMap model) {
		model.put("action", "collections");
		try {
			model.put("productList1", productService.findAllProduct());
			model.put("productList2", productService.findAllProduct());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "collections";
	}
}
