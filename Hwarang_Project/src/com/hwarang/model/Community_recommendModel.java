package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hwarang.controller.RequestMapping;

public class Community_recommendModel {
	@RequestMapping("community/community_recommend.hr")
	public String Community_recommend_page(HttpServletRequest request,HttpServletResponse response) {
		request.setAttribute("main_jsp", "../community/community_recommend.jsp");
		return "../main/main.jsp";
	}
}
