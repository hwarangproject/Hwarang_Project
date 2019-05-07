package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;

import com.hwarang.controller.RequestMapping;

public class Community_etcModel {
	@RequestMapping("community/community_etc.hr")
	public String Community_etc_page(HttpServletRequest request) {
		request.setAttribute("main_jsp", "../community/community_etc.jsp");
		return "../main/main.jsp";
	}
}
