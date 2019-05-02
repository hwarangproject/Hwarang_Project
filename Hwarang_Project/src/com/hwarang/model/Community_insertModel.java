package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;

import com.hwarang.controller.RequestMapping;

public class Community_insertModel {
	@RequestMapping("community/community_insert.hr")
	public String Community_insert_page(HttpServletRequest request) {
		request.setAttribute("main_jsp", "../community/community_insert.jsp");
		return "../main/main.jsp";
	}
}
