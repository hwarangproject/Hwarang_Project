package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;

import com.hwarang.controller.RequestMapping;

public class Pouch_detailModel {
	@RequestMapping("pouch/pouch_detail.hr")
    public String pouch_detail_page(HttpServletRequest request)
    {
		request.setAttribute("main_jsp", "../pouch/pouch_detail.jsp");
    	return "../main/main.jsp";
    }
}
