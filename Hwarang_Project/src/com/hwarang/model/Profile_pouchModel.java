package com.hwarang.model;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hwarang.controller.RequestMapping;
import com.hwarang.dao.CartDAO;
import com.hwarang.dao.PouchDAO;
import com.hwarang.dao.ProfileDAO;
import com.hwarang.vo.CartVO;
import com.hwarang.vo.MemberVO;

public class Profile_pouchModel {
	@RequestMapping("profile/profile_pouch.hr")
	public String profile_myactivity_page(HttpServletRequest request,HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		MemberVO vo = ProfileDAO.getMemberData(id);
		
		request.setAttribute("vo", vo);
		request.setAttribute("main_jsp", "../profile/profile_pouch.jsp");
		return "../main/main.jsp";
	}
	
	// 상품디테일페이지에서 add to pouch 버튼누르면 내파우치에 상품추가
	@RequestMapping("profile/profile_pouch_product_insert_ok.hr")
	public String profile_pouch_product_insert_ok(HttpServletRequest request,HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		MemberVO vo = ProfileDAO.getMemberData(id);
		
		String pno = request.getParameter("pno");
		
		Map map = new HashMap();
		map.put("pouch_no", vo.getPouch_no());
		map.put("product_no", pno);
		PouchDAO.pouch_jjim_count_add(Integer.parseInt(pno)); // product 테이블에 파우치 찜 카운트 증가
		PouchDAO.add_to_mypouch(map); // 

		return "redirect:../product/product_detail.hr?pno=" + pno;
	
	}
	
	//product_in_pouch_delete
	
	@RequestMapping("profile/product_in_pouch_delete.hr")
	public String product_in_pouch_delete(HttpServletRequest request,HttpServletResponse response){
		String pno=request.getParameter("pno");
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		MemberVO vo = ProfileDAO.getMemberData(id);
		
		if(id!=null)
		{
			Map map = new HashMap();
			map.put("pouch_no", vo.getPouch_no());
			map.put("product_no", pno);
			
			PouchDAO.product_in_pouch_delete(map);
			PouchDAO.pouch_jjim_cnt_update_Minus(Integer.parseInt(pno));
		}
		
		return "redirect:../pouch/pouch_detail.hr?pouch_no="+vo.getPouch_no();
	}
}
