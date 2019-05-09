package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.hwarang.controller.RequestMapping;
import com.hwarang.dao.ProfileDAO;
import com.hwarang.vo.*;
import java.util.*;

public class Profile_likeModel {
	@RequestMapping("profile/profile_like.hr")
	public String profile_myactivity_page(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		MemberVO vo = ProfileDAO.getMemberData(id);
		String brandImg = ProfileDAO.getBrandImg(vo.getBrand_like());
		
		// product_no list로 받는다
		List<Integer> pnoList = ProfileDAO.getLikeProduct_no(vo.getMember_no());
		ProductVO pvo = new ProductVO();
		List<ProductVO> pvoList = new ArrayList<ProductVO>();
		
		// pno로 각각의 pvo list로 받음
		for(int i : pnoList){
			pvo = ProfileDAO.getLikeProductVO(i);
			pvoList.add(pvo);
		}
		
		// pouch_no list로 받는다
		List<Integer> ponoList = ProfileDAO.getLikePouch_no(vo.getMember_no());
		PouchVO povo = new PouchVO();
		List<PouchVO> povoList = new ArrayList<PouchVO>();
		List<MemberVO> mList = new ArrayList<MemberVO>();
		
		// pono로 각각의 povo list로 받음
		for(int i : ponoList){
			povo = ProfileDAO.getLikePouchVO(i);
			povoList.add(povo);
		}
		
		
		
		request.setAttribute("povoList", povoList);
		request.setAttribute("pvoList", pvoList);
		request.setAttribute("brandImg", brandImg);
		request.setAttribute("vo", vo);
		request.setAttribute("main_jsp", "../profile/profile_like.jsp");
		return "../main/main.jsp";
	}
}
