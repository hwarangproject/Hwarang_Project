package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.hwarang.controller.RequestMapping;
import com.hwarang.dao.ProfileDAO;
import com.hwarang.vo.MemberVO;

public class Profile_myactivityModel {
	@RequestMapping("profile/profile_myactivity.hr")
	public String profile_myactivity_page(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		MemberVO vo = ProfileDAO.getMemberData(id);
		
		request.setAttribute("vo", vo);
		request.setAttribute("pouchMake", "../profile/profile_pouch.hr");
		request.setAttribute("main_jsp", "../profile/profile_myactivity.jsp");
		return "../main/main.jsp";
	}
}
