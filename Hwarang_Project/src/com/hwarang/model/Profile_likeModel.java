package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.hwarang.controller.RequestMapping;
import com.hwarang.dao.ProfileDAO;
import com.hwarang.vo.MemberVO;

public class Profile_likeModel {
	@RequestMapping("profile/profile_like.hr")
	public String profile_myactivity_page(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		MemberVO vo = ProfileDAO.getMemberData(id);
		
		request.setAttribute("vo", vo);
		request.setAttribute("main_jsp", "../profile/profile_like.jsp");
		return "../main/main.jsp";
	}
}
