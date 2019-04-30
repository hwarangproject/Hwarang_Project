package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;

import com.hwarang.controller.RequestMapping;

public class MainModel {
	@RequestMapping("main/main.hr")
    public String main_page(HttpServletRequest request)
    {
		request.setAttribute("main_jsp", "default.jsp");
    	return "main.jsp";
    }
}
