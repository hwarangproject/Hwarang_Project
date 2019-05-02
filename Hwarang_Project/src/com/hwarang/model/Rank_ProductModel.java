package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;

import com.hwarang.controller.RequestMapping;

public class Rank_ProductModel {
	@RequestMapping("ranking/rank_product.hr")
	public String rank_product_page(HttpServletRequest request) {
		request.setAttribute("main_jsp", "../ranking/rank_product.jsp");
		return "../main/main.jsp";
	}
}
