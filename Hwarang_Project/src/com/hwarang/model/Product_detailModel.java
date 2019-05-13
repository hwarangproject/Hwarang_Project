package com.hwarang.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hwarang.controller.RequestMapping;
import com.hwarang.dao.*;
import com.hwarang.vo.MemberVO;
import com.hwarang.vo.ProductVO;
import com.hwarang.vo.Product_replyVO;

public class Product_detailModel {
	@RequestMapping("product/product_detail.hr")
    public String main_page(HttpServletRequest request, HttpServletResponse response)
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
		
		// DAO�� ������ ����
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
	
	@RequestMapping("product/product_reply_delete.hr")
	public String product_reply_delete(HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		String reply_no = request.getParameter("reply_no");
		MemberVO mvo = ProfileDAO.getMemberData(id);
		String pno=request.getParameter("pno");
		
		Product_replyVO prvo = new Product_replyVO();
		prvo.setMember_no(mvo.getMember_no());
		prvo.setReply_no(Integer.parseInt(reply_no));
		ProductDAO.productReplyDelete(prvo);
		
		return "redirect:../product/product_detail.hr?pno="+pno;
	}
	
	@RequestMapping("product/product_reply_update.hr")
	public String product_reply_update(HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		String pno=request.getParameter("pno");
		String reply_content = request.getParameter("reply_content");
		String reply_no = request.getParameter("reply_no");
		MemberVO mvo = ProfileDAO.getMemberData(id);
		
		Product_replyVO prvo = new Product_replyVO();
		prvo.setMember_no(mvo.getMember_no());
		prvo.setReply_no(Integer.parseInt(reply_no));
		prvo.setReply_content(reply_content);
		ProductDAO.productReplyUpdate(prvo);
		
		return "redirect:../product/product_detail.hr?pno="+pno;
	}
	
	
	
	
	
	
	
	
	
}
