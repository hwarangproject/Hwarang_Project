package com.hwarang.model;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.hwarang.controller.RequestMapping;
import com.hwarang.dao.ProfileDAO;
import com.hwarang.vo.*;

public class Profile_myactivityModel {
	@RequestMapping("profile/profile_myactivity.hr")
	public String profile_myactivity_page(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		MemberVO vo = ProfileDAO.getMemberData(id);
		int mno = vo.getMember_no();
		
		// ³»°¡ ¾´ ´ñ±Û
		List<ProductVO> pList = ProfileDAO.myProductReplyInfo(mno);
		List<Product_replyVO> prList = ProfileDAO.myReplyInfo(mno);
		
		request.setAttribute("pList", pList);
		request.setAttribute("prList", prList);
		request.setAttribute("vo", vo);
		request.setAttribute("main_jsp", "../profile/profile_myactivity.jsp");
		return "../main/main.jsp";
	}
	

}
