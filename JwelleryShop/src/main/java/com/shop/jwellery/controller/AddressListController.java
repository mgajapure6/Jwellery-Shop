package com.shop.jwellery.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.jwellery.service.AddressService;
import com.shop.jwellery.service.LoginService;

@Controller
@RequestMapping(value = "checkout/Address")
public class AddressListController {

	@Autowired
	private AddressService addressService;

	@Autowired
	private LoginService loginService;;

	@RequestMapping(method = RequestMethod.GET)
	public String showShippingAddress(ModelMap model, HttpSession session) {
		if (session.getAttribute("email") != null) {
			if (session.getAttribute("cart") != null) {
				String email = (String) session.getAttribute("email");
				int cid = loginService.getCustomerId(email);
				model.put("addressList", addressService.getAllAddress(cid));
				return "showAddress";
			} else {
				return "cart";
			}
		} else {
			return "login";
		}
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public String deleteShippingAddress(@PathVariable("id") int id, ModelMap model, HttpSession session) {
		if (session.getAttribute("email") != null) {
			int delete = addressService.deleteAddress(id);
			if (delete != 0) {
				String email = (String) session.getAttribute("email");
				int cid = loginService.getCustomerId(email);
				model.put("addressList", addressService.getAllAddress(cid));
				return "showAddress";
			} else {
				model.addAttribute("error", "Error while deleting Address. Try deleting after sometime.");
				return "showAddress";
			}

		} else {
			return "login";
		}
	}
}
