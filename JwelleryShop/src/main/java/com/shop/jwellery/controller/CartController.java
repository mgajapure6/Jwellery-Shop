package com.shop.jwellery.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.jwellery.beans.Item;
import com.shop.jwellery.service.ProductService;

@Controller
@RequestMapping(value = "/cart.html")
public class CartController {

	@Autowired
	ProductService productService;

	@RequestMapping(method = RequestMethod.GET)
	public String cartPage(ModelMap model, HttpSession session) {

		return "cart";
	}

	@RequestMapping(value = "/buy/{id}", method = RequestMethod.GET)
	public String buy(@PathVariable("id") int id, HttpSession session, ModelMap model) {

		if (session.getAttribute("cart") != null) {
			@SuppressWarnings("unchecked")
			List<Item> cart = (List<Item>) session.getAttribute("cart");
			try {
				cart.add(new Item(productService.findSingleProduct(id), 1));
				session.setAttribute("cart", cart);

			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {

			List<Item> cart = new ArrayList<Item>();
			try {
				cart.add(new Item(productService.findSingleProduct(id), 1));
				session.setAttribute("cart", cart);

			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return "cart";
	}

	@RequestMapping(value = "delete/{index}", method = RequestMethod.GET)
	public String deleteCartItem(@PathVariable("index") int index, HttpSession session) {
		@SuppressWarnings("unchecked")
		List<Item> cart = (List<Item>) session.getAttribute("cart");
		cart.remove(index);
		return "redirect:/cart.html";
	}

	@RequestMapping(value = "itemplus/{idplus}", method = RequestMethod.GET)
	public String ItemPlus(@PathVariable("idplus") int idplus, HttpSession session) {
		@SuppressWarnings("unchecked")
		List<Item> cart = (List<Item>) session.getAttribute("cart");
		int index = isExists(idplus, session);
		if (index == -1) {
			try {
				cart.add(new Item(productService.findSingleProduct(idplus), 1));

			} catch (Exception e) {
				e.printStackTrace();
			}

		} else {
			int quentity = cart.get(index).getQuentity() + 1;
			cart.get(index).setQuentity(quentity);
			session.setAttribute("cart", cart);
		}
		return "redirect:/cart.html";
	}

	@RequestMapping(value = "itemminus/{idminus}", method = RequestMethod.GET)
	public String ItemMinus(@PathVariable("idminus") int idminus, HttpSession session) {
		@SuppressWarnings("unchecked")
		List<Item> cart = (List<Item>) session.getAttribute("cart");
		int index = isExists(idminus, session);
		if (index == -1) {
			try {
				cart.add(new Item(productService.findSingleProduct(idminus), 1));

			} catch (Exception e) {
				e.printStackTrace();
			}

		} else {
			int quentity = cart.get(index).getQuentity() - 1;
			cart.get(index).setQuentity(quentity);
			session.setAttribute("cart", cart);
		}
		return "redirect:/cart.html";
	}

	private int isExists(int idplus, HttpSession session) {
		@SuppressWarnings("unchecked")
		List<Item> cart = (List<Item>) session.getAttribute("cart");
		for (int i = 0; i < cart.size(); i++) {
			if (cart.get(i).getProduct().getPRODUCTID() == idplus) {
				return i;
			}
		}
		return -1;
	}
}
