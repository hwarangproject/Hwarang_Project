package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;

import com.hwarang.controller.RequestMapping;

public class CartModel {
	@RequestMapping("cart/cart.hr")
	public String cart_page(HttpServletRequest request) {
		request.setAttribute("main_jsp", "../cart/cart.jsp");
		return "../main/main.jsp";
	}
}
