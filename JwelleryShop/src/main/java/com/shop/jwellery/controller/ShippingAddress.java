package com.shop.jwellery.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.jwellery.beans.Address;
import com.shop.jwellery.service.AddressService;
import com.shop.jwellery.service.LoginService;

@Controller
@RequestMapping(value = "checkout/shippingAddress")
public class ShippingAddress {

	@Autowired
	private AddressService addressService;

	@Autowired
	private LoginService loginService;;

	@RequestMapping(method = RequestMethod.GET)
	public String showCheckoutShippingAddressForm(ModelMap model, HttpSession session) {
		if (session.getAttribute("email") != null) {
			if (session.getAttribute("cart") != null) {

				return "shippingAddress";
			} else {
				return "cart";
			}
		} else {
			return "login";
		}
	}

	@RequestMapping(method = RequestMethod.POST)
	public String shippingAddressSave(@ModelAttribute("address") Address address, ModelMap model, HttpSession session) {
		String email = (String) session.getAttribute("email");
		int cid = loginService.getCustomerId(email);
		addressService.fillAddress(address, cid);
		return "redirect:Address";
	}

}
