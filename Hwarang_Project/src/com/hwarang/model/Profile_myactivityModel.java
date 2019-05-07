package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;

import com.hwarang.controller.RequestMapping;

public class Profile_myactivityModel {
	@RequestMapping("profile/profile_myactivity.hr")
	public String profile_myactivity_page(HttpServletRequest request) {
		request.setAttribute("main_jsp", "../profile/profile_myactivity.jsp");
		return "../main/main.jsp";
	}
}
