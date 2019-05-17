package com.hwarang.model;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

import com.hwarang.controller.RequestMapping;
import com.hwarang.dao.*;
import com.hwarang.vo.*;

public class Product_detailModel {
	@RequestMapping("product/product_detail.hr")
	public String main_page(HttpServletRequest request, HttpServletResponse response)

	{
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (Exception ex) {
		}

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		String pno = request.getParameter("pno");
		ProductVO vo = ProductDAO.productDetailData(Integer.parseInt(pno));
		DetailcateVO dvo=ProductDAO.productDetailData_Type(Integer.parseInt(pno));
		int sum=ProductDAO.productDetailData_Sum(Integer.parseInt(pno));
		request.setAttribute("vo", vo);
		request.setAttribute("dvo", dvo);
		request.setAttribute("sum", sum);

		// 쿠키 생성
		CartVO cartvo = new CartVO();
		cartvo.setId(id);
		cartvo.setProduct_no(vo.getProduct_no());
		int count = CartDAO.cartOkCount(cartvo);
		request.setAttribute("count", count);
		System.out.println("찜:" + count);

		Cookie cookie = new Cookie(id + "|" + pno, vo.getProduct_img());
		cookie.setPath("/"); // 모든경로에서 접근가능하도록
		System.out.println("쿠키이름:" + cookie.getName());
		System.out.println("쿠키값" + cookie.getValue());
		cookie.setMaxAge(60 * 60 * 24);
		response.addCookie(cookie);

		List<Product_replyVO> prList = ProductDAO.productReplyListData(Integer.parseInt(pno));
		request.setAttribute("prList", prList);
		request.setAttribute("main_jsp", "../product/product_detail.jsp");
		return "../main/main.jsp";
	}

	@RequestMapping("product/product_reply_insert.hr")
	public String product_reply_insert(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (Exception ex) {
		}

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		MemberVO mvo = ProfileDAO.getMemberData(id);
		String pno = request.getParameter("pno");
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

		return "redirect:../product/product_detail.hr?pno=" + pno;
	}

	@RequestMapping("product/product_reply_delete.hr")
	public String product_reply_delete(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		String rno = request.getParameter("rno");
		MemberVO mvo = ProfileDAO.getMemberData(id);
		String pno = request.getParameter("pno");

		Product_replyVO prvo = new Product_replyVO();
		prvo.setMember_no(mvo.getMember_no());
		prvo.setReply_no(Integer.parseInt(rno));
		ProductDAO.productReplyDelete(prvo);

		return "redirect:../product/product_detail.hr?pno=" + pno;
	}

	@RequestMapping("product/product_reply_update.hr")
	public String product_reply_update(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (Exception ex) {
		}

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		String pno = request.getParameter("pno");
		String reply_content = request.getParameter("reply_content");
		String rno = request.getParameter("rno");
		MemberVO mvo = ProfileDAO.getMemberData(id);

		Product_replyVO prvo = new Product_replyVO();
		prvo.setMember_no(mvo.getMember_no());
		prvo.setReply_no(Integer.parseInt(rno));
		prvo.setReply_content(reply_content);
		ProductDAO.productReplyUpdate(prvo);

		return "redirect:../product/product_detail.hr?pno=" + pno;
	}

}
