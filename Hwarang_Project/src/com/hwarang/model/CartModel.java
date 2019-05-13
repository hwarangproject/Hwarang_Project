package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hwarang.controller.RequestMapping;

public class CartModel {
	@RequestMapping("cart/cart.hr")
	public String cart_page(HttpServletRequest request,HttpServletResponse response) {
		request.setAttribute("main_jsp", "../cart/cart.jsp");
		return "../main/main.jsp";
	}
}
