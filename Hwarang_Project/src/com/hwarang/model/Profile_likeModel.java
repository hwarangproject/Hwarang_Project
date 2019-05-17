package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hwarang.controller.RequestMapping;
import com.hwarang.dao.ProfileDAO;
import com.hwarang.vo.*;


import java.util.*;

public class Profile_likeModel {
	//��ǰ ���ƿ� ���
	
	@RequestMapping("profile/profile_like.hr")
	public String profile_myactivity_page(HttpServletRequest request,HttpServletResponse response) {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		MemberVO vo = ProfileDAO.getMemberData(id);
		String brandImg = ProfileDAO.getBrandImg(vo.getBrand_like());

		// product_no list�� �޴´�
		List<Integer> pnoList = ProfileDAO.getLikeProduct_no(vo.getMember_no());
		ProductVO pvo = new ProductVO();
		List<ProductVO> pvoList = new ArrayList<ProductVO>();
		
		// pno�� ������ pvo list�� ����  
		for(int i : pnoList){
			pvo = ProfileDAO.getLikeProductVO(i);
			pvoList.add(pvo);
		}
		
		// ������ ������
		String page=request.getParameter("page");
		  if(page == null){
			  page = "1";
		  }
		  
		  int curpage = Integer.parseInt(page);
		  Map map = new HashMap();
		  int rowSize = 6;
		  int start = (curpage * rowSize) - (rowSize - 1);//1 8
		  int end = curpage * rowSize;//7 14
		  
		map.put("member_no", vo.getMember_no());
	    map.put("start", start);
		map.put("end", end);
		List<ProductVO> lpList = new ArrayList<ProductVO>();
		lpList = ProfileDAO.likeProdPageDivision(map);
		int totalpage = ProfileDAO.likeProdTotalPage(vo.getMember_no());
		
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
		request.setAttribute("lpList", lpList);
		  
		// ���� ����ϱ�
		request.setAttribute("BLOCK", BLOCK);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("allPage", allPage);
		
		// pouch_no list�� �޴´�
		List<Integer> ponoList = ProfileDAO.getLikePouch_no(vo.getMember_no());
		PouchVO povo = new PouchVO();
		List<PouchVO> povoList = new ArrayList<PouchVO>();
		List<MemberVO> mList = new ArrayList<MemberVO>(); 
		
		// pono�� ������ povo list�� ����
		for(int i : ponoList){
			povo = ProfileDAO.getLikePouchVO(i);
			povoList.add(povo);
		}
		for(int j : ponoList){
			MemberVO mvo = ProfileDAO.getLikePouchMemberVO(j);
			mList.add(mvo);
		}
			
		int likeMeCnt = ProfileDAO.getLikemeCnt(vo.getMember_no());
		int MelikeCnt = ProfileDAO.getMelikeCnt(vo.getMember_no());
		int productCnt = ProfileDAO.getProductCnt(vo.getMember_no());
		request.setAttribute("likeMeCnt", likeMeCnt);
		request.setAttribute("productCnt", productCnt);
		request.setAttribute("MelikeCnt", MelikeCnt);
		
		request.setAttribute("mList", mList);
		request.setAttribute("povoList", povoList);
		request.setAttribute("pvoList", pvoList);
		request.setAttribute("brandImg", brandImg);
		request.setAttribute("vo", vo);
		request.setAttribute("main_jsp", "../profile/profile_like.jsp");
		return "../main/main.jsp";
	}
	
	// ���ã�� ��ǰ ����
	@RequestMapping("profile/likeProduct_delete.hr")
	  public String reply_delete(HttpServletRequest request,HttpServletResponse response){
		  String pno = request.getParameter("pno");
		  String mno = request.getParameter("mno");
		  
		  Product_jjimVO vo = new Product_jjimVO();
		  vo.setMember_no(Integer.parseInt(mno));
		  vo.setProduct_no(Integer.parseInt(pno));
		  
		  // DAO����
		  ProfileDAO.deleteLikeProduct(vo);
		  return "redirect:../profile/profile_like.hr"; 
	  }
	//��ǰ ���ƿ�  INSERT
	@RequestMapping("profile/profile_like_insert.hr")
	public String profile_like_insert(HttpServletRequest request,HttpServletResponse response) {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		String pno = request.getParameter("pno");
		
		MemberVO vo = ProfileDAO.getMemberData(id);

		Map map = new HashMap();
		map.put("member_no", vo.getMember_no());
		map.put("product_no", pno);
		
		
		ProfileDAO.insertLikeProductVO(map);
		int count=1;
		request.setAttribute("like_count", count);
		
		
		return "redirect:../product/product_detail.hr?pno=" + pno;
	}
	
}
