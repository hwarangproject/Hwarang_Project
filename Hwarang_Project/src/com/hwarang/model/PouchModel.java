package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hwarang.controller.RequestMapping;

public class PouchModel {
	@RequestMapping("pouch/pouch.hr")
    public String pouch_page(HttpServletRequest request,HttpServletResponse response)
    {
		request.setAttribute("main_jsp", "../pouch/pouch.jsp");
    	return "../main/main.jsp";
    }
}
