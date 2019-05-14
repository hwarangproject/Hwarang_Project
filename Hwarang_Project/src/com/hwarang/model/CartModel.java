package com.hwarang.model;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hwarang.controller.RequestMapping;
import com.hwarang.dao.CartDAO;

import com.hwarang.vo.CartVO;
import com.hwarang.vo.ProductVO;
import com.hwarang.dao.*;

public class CartModel {
	@RequestMapping("cart/cart.hr")
	public String cart_page(HttpServletRequest request, HttpServletResponse response) {

		// Âò
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		List<ProductVO> pList = new ArrayList<ProductVO>();
		List<CartVO> iList = CartDAO.cartGetData(id);
		List<Integer> cart_no_list = new ArrayList<Integer>();
		for (CartVO vo: iList) {
			ProductVO v = ProductDAO.productDetailData(vo.getProduct_no());
			pList.add(v);
			cart_no_list.add(vo.getCart_no());
		}
		
		request.setAttribute("clist", cart_no_list);
		request.setAttribute("plist", pList);
		request.setAttribute("main_jsp", "../cart/cart.jsp");
		return "../main/main.jsp";
	}

	@RequestMapping("cart/cart_ok.hr")
	public String cart_ok(HttpServletRequest request, HttpServletResponse response) {

		String pno = request.getParameter("pno");
		// insert
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");

		CartVO vo = new CartVO();
		vo.setProduct_no(Integer.parseInt(pno));
		vo.setId(id);
		CartDAO.cartInsert(vo);

		return "redirect:../product/product_detail.hr?pno=" + pno;

	}
	
	@RequestMapping("cart/cart_delete.hr")
	public String cart_delete(HttpServletRequest request, HttpServletResponse response) {

		String cno = request.getParameter("cno");
		// insert
		CartDAO.cartDelete(Integer.parseInt(cno));
		return "redirect:../cart/cart.hr";

	}
}
