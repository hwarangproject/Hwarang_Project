package com.hwarang.model;

import java.util.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hwarang.controller.RequestMapping;
import com.hwarang.dao.*;
import com.hwarang.vo.*;


public class Profile_myactivityModel {
	@RequestMapping("profile/profile_myactivity.hr")
	public String profile_myactivity_page(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		MemberVO vo = ProfileDAO.getMemberData(id);
		int mno = vo.getMember_no();

		// ���� �� ���
		List<ProductVO> pList = ProfileDAO.myProductReplyInfo(mno);
		List<Product_replyVO> prList = ProfileDAO.myReplyInfo(mno);

		Cookie[] getCookie = request.getCookies();

		List<ProductVO> cookielist = new ArrayList<ProductVO>();
		System.out.println("��Űũ��:" + getCookie.length);
		if (getCookie.length > 1) {
			// i = 0�� jsessionid �ڵ��߱޵Ǵ� ��Űid
			for (int i = getCookie.length - 1; i >= 1; i--) {
				Cookie c = getCookie[i];
				if (c.getName().startsWith(id)) {

					ProductVO cookie_vo = new ProductVO();
					String s = c.getName().substring(c.getName().indexOf("|") + 1);
					System.out.println("c:" + s);
					System.out.println("c2:" + c.getValue());
					// ��Ű �̸� �������� String name = c.getName();
					// ��Ű �� �������� String value = c.getValue();

					cookie_vo.setProduct_no(Integer.parseInt(s));
					cookie_vo.setProduct_img(c.getValue());
					System.out.println(cookie_vo.getProduct_img());
					System.out.println(cookie_vo.getProduct_no());
					cookielist.add(cookie_vo);
				}
			}

		}
		
		// ������ ������  /page=1
		String page=request.getParameter("page");
		  if(page == null){
			  page = "1";
		  }
		  
		  int curpage = Integer.parseInt(page);
		  Map map = new HashMap();
		  int rowSize = 7;
		  int start = (curpage * rowSize) - (rowSize - 1);//1 8
		  int end = curpage * rowSize;//7 14
		  
		  map.put("member_no", mno);
		  map.put("start", start);
		  map.put("end", end);
		  
		  List<Product_replyVO> pprList = ProfileDAO.prodReplyPageDivision(map);
		  int totalpage = ProfileDAO.prodReplyTotalPage(mno);
		  
		  final int BLOCK = 5;
		  int startPage = ((curpage - 1) / BLOCK * BLOCK) + 1;
		  int endPage = ((curpage - 1) / BLOCK * BLOCK) + BLOCK;
		  int allPage = totalpage;
		  if(endPage > allPage){
			  endPage = allPage; 
		  }
		
		// ����������,��������,List
		request.setAttribute("curpage", curpage);
	    request.setAttribute("totalpage", totalpage);
		request.setAttribute("pprList", pprList);
		  
		// ���� ����ϱ�
		request.setAttribute("BLOCK", BLOCK);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("allPage", allPage);
		  
		request.setAttribute("cookieList", cookielist);
		request.setAttribute("pList", pList);
		request.setAttribute("prList", prList);
		request.setAttribute("vo", vo);
		request.setAttribute("main_jsp", "../profile/profile_myactivity.jsp");
		return "../main/main.jsp";
	}

}
