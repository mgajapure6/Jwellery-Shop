package com.shop.jwellery.controller;

//import java.util.List;

import javax.servlet.http.HttpSession;

//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//import com.online.beans.Address;
//import com.online.beans.Customer;
//import com.online.beans.Item;
//import com.online.beans.OrderData;

//import com.online.service.SaveorderService;

@Controller
@RequestMapping(value = "checkout/thankyou")
public class ConformOrder {

	//@Autowired
	//private SaveorderService saveorderService;
//	
	@RequestMapping(method = RequestMethod.GET)
	public String OrderProduct( ModelMap model, HttpSession session) {
		
			return "thanks";
		
	}
}
