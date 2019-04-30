package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;

import com.hwarang.controller.RequestMapping;

public class Product_detailModel {
	@RequestMapping("product/product_detail.hr")
    public String pouch_page(HttpServletRequest request)
    {
		request.setAttribute("main_jsp", "../product/product_detail.jsp");
    	return "../main/main.jsp";
    }
}
