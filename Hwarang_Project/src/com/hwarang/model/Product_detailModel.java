package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;

import com.hwarang.controller.RequestMapping;
import com.hwarang.dao.*;
import com.hwarang.vo.ProductVO;

public class Product_detailModel {
	@RequestMapping("product/product_detail.hr")
    public String main_page(HttpServletRequest request)
    {
		String pno=request.getParameter("pno");
		ProductVO vo=ProductDAO.productDetailData(Integer.parseInt(pno));
		request.setAttribute("vo", vo);
		request.setAttribute("main_jsp", "../product/product_detail.jsp");
		
    	return "../main/main.jsp";
    }
}
