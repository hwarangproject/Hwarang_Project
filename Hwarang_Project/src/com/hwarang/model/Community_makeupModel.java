package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;

import com.hwarang.controller.RequestMapping;

public class Community_makeupModel {
	@RequestMapping("community/community_makeup.hr")
	public String Community_makeup_page(HttpServletRequest request) {
		request.setAttribute("main_jsp", "../community/community_makeup.jsp");
		return "../main/main.jsp";
	}
}
