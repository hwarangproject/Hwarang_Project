package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;

import com.hwarang.controller.RequestMapping;

public class Rank_ScoreModel {
	@RequestMapping("ranking/rank_score.hr")
	public String rank_product(HttpServletRequest request) {
		request.setAttribute("main_jsp", "../ranking/rank_score.jsp");
		return "../main/main.jsp";
	}
}
