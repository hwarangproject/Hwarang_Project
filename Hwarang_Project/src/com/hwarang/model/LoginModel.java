package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;

import com.hwarang.controller.RequestMapping;

public class LoginModel {
	@RequestMapping("login/login.hr")
	public String login_page(HttpServletRequest request) {
		request.setAttribute("main_jsp", "../login/login.jsp");
		return "../main/main.jsp";
	}
}
