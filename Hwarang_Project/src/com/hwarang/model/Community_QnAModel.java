package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hwarang.controller.RequestMapping;

public class Community_QnAModel {
	@RequestMapping("community/community_QnA.hr")
	public String Community_QnA_page(HttpServletRequest request,HttpServletResponse response) {
		request.setAttribute("main_jsp", "../community/community_QnA.jsp");
		return "../main/main.jsp";
	}
}
