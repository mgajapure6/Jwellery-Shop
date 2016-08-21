package com.shop.jwellery.controller;





import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.jwellery.service.AddressService;
import com.shop.jwellery.service.CustomerService;
import com.shop.jwellery.service.LoginService;



@Controller
@RequestMapping(value = "checkout/ordersummery")
public class OrdersummeryController {

	@Autowired
	private AddressService addressService;
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value="/{aid}",method = RequestMethod.GET)
	public String showOrderSummery(@PathVariable("aid") int aid, ModelMap model, HttpSession session) {	
		session.setAttribute("address", addressService.findSingleAddress(aid));
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("E dd/MM/yyyy");
		session.setAttribute("orderdate", sdf.format(date));
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.add(Calendar.DATE, 5);
		session.setAttribute("shippingdate",sdf.format(calendar.getTime()));
		String email = (String) session.getAttribute("email");
		int cid = loginService.getCustomerId(email);
		session.setAttribute("customer", customerService.getCustomer(cid));
		return "ordersummery";
	}
	
}
