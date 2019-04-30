package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;

import com.hwarang.controller.RequestMapping;

public class Rank_AgeModel {
	@RequestMapping("ranking/rank_age.hr")
	public String rank_product(HttpServletRequest request) {
		request.setAttribute("main_jsp", "../ranking/rank_age.jsp");
		return "../main/main.jsp";
	}
}
