package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;
import com.hwarang.controller.RequestMapping;

public class Profile_likeModel {
	@RequestMapping("profile/profile_like.hr")
	public String profile_myactivity_page(HttpServletRequest request) {
		request.setAttribute("main_jsp", "../profile/profile_like.jsp");
		return "../main/main.jsp";
	}
}
