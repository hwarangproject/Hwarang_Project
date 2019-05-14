package com.hwarang.model;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hwarang.controller.RequestMapping;
import com.hwarang.dao.ProductDAO;
import com.hwarang.vo.ProductVO;

public class Rank_AgeModel {
	@RequestMapping("ranking/rank_age.hr")
	public String rank_age_page(HttpServletRequest request,HttpServletResponse response) {
		
		List<ProductVO> product_10_age=new ArrayList<ProductVO>();
		List<ProductVO> product_20_age=new ArrayList<ProductVO>();
		List<ProductVO> product_30_age=new ArrayList<ProductVO>();
		List<ProductVO> product_40_age=new ArrayList<ProductVO>();
		List<ProductVO> product_50_age=new ArrayList<ProductVO>();
		
		product_10_age=ProductDAO.product_10_age();
		product_20_age=ProductDAO.product_20_age();
		product_30_age=ProductDAO.product_30_age();
		product_40_age=ProductDAO.product_40_age();
		product_50_age=ProductDAO.product_50_age();
		
		request.setAttribute("product_10_age", product_10_age);
		request.setAttribute("product_20_age", product_20_age);
		request.setAttribute("product_30_age", product_30_age);
		request.setAttribute("product_40_age", product_40_age);
		request.setAttribute("product_50_age", product_50_age);
		request.setAttribute("main_jsp", "../ranking/rank_age.jsp");
		return "../main/main.jsp";
	}
}
