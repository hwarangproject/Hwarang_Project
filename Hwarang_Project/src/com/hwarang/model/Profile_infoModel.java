package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;

import com.hwarang.controller.RequestMapping;

public class Profile_infoModel {
	@RequestMapping("profile/profile_info.hr")
	public String profile_myactivity_page(HttpServletRequest request) {
		request.setAttribute("main_jsp", "../profile/profile_info.jsp");
		return "../main/main.jsp";
	}
}
