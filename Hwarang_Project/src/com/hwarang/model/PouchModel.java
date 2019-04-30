package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;

import com.hwarang.controller.RequestMapping;

public class PouchModel {
	@RequestMapping("pouch/pouch.hr")
    public String pouch_page(HttpServletRequest request)
    {
		request.setAttribute("main_jsp", "../pouch/pouch.jsp");
    	return "../main/main.jsp";
    }
}
