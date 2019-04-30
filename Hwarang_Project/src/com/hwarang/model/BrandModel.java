package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;

import com.hwarang.controller.RequestMapping;

public class BrandModel {
	@RequestMapping("brand/brand.hr")
	public String rank_product(HttpServletRequest request) {
		request.setAttribute("main_jsp", "../brand/brand.jsp");
		return "../main/main.jsp";
	}
}
