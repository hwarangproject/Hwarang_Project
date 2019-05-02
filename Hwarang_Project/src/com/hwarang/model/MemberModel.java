package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;

import com.hwarang.controller.RequestMapping;

public class MemberModel {
	@RequestMapping("member/member_make.hr")
    public String memeber_make_page(HttpServletRequest request)
    {
		request.setAttribute("main_jsp", "../member/member_make.jsp");
    	return "../main/main.jsp";
    }
	
}
