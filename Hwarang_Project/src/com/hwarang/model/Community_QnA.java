package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;

import com.hwarang.controller.RequestMapping;

public class Community_QnA {
	@RequestMapping("community/community_QnA.hr")
	public String rank_product(HttpServletRequest request) {
		request.setAttribute("main_jsp", "../community/community_QnA.jsp");
		return "../main/main.jsp";
	}
}
