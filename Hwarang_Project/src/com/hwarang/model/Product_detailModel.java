package com.hwarang.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.hwarang.controller.RequestMapping;
import com.hwarang.dao.*;
import com.hwarang.vo.MemberVO;
import com.hwarang.vo.ProductVO;
import com.hwarang.vo.Product_replyVO;

public class Product_detailModel {
	@RequestMapping("product/product_detail.hr")
    public String main_page(HttpServletRequest request)
    {
		try{
			  request.setCharacterEncoding("UTF-8");
		  }catch(Exception ex){}
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		String pno=request.getParameter("pno");
		ProductVO vo=ProductDAO.productDetailData(Integer.parseInt(pno));
		request.setAttribute("vo", vo);
		request.setAttribute("main_jsp", "../product/product_detail.jsp");
		
		List<Product_replyVO> prList = ProductDAO.productReplyListData(Integer.parseInt(pno));
		request.setAttribute("prList", prList);
		  
    	return "../main/main.jsp";
    }
	
	@RequestMapping("product/product_reply_insert.hr")
	public String product_reply_insert(HttpServletRequest request){
		try{
			  request.setCharacterEncoding("UTF-8");
		  }catch(Exception ex){}
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		MemberVO mvo = ProfileDAO.getMemberData(id);
		String pno=request.getParameter("pno");
		String reply_content = request.getParameter("reply_content");
		String product_rate = request.getParameter("product_rate");
		
		// DAO로 데이터 전송
		Product_replyVO prvo = new Product_replyVO();
		prvo.setReply_content(reply_content);
		prvo.setProduct_rate(Integer.parseInt(product_rate));
		prvo.setProduct_no(Integer.parseInt(pno));
		prvo.setMember_no(mvo.getMember_no());
		prvo.setMember_no2(mvo.getMember_no());
		ProductDAO.productReplyInsert(prvo);
		

		request.setAttribute("main_jsp", "../product/product_detail.jsp");
		
		return "redirect:../product/product_detail.hr?pno="+pno;
	}
}
