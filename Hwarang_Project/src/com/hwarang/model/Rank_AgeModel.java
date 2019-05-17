package com.hwarang.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hwarang.controller.RequestMapping;
import com.hwarang.dao.ProductDAO;
import com.hwarang.vo.DetailcateVO;
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
	
	@RequestMapping("ranking/rank_age_detail.hr")
	public String rank_age_page_detail(HttpServletRequest request,HttpServletResponse response) {
		List<ProductVO> product_age=new ArrayList<ProductVO>();
		
		String age = request.getParameter("age");
			
		if(Integer.parseInt(age)==10){
			product_age=ProductDAO.product_10_age();
			request.setAttribute("age", age);
		}
		
		if(Integer.parseInt(age)==20){
			product_age=ProductDAO.product_20_age();
			request.setAttribute("age", age);
		}
		
		if(Integer.parseInt(age)==30){
			product_age=ProductDAO.product_30_age();
			request.setAttribute("age", age);
		}
		
		if(Integer.parseInt(age)==40){
			product_age=ProductDAO.product_40_age();
			request.setAttribute("age", age);
		}
		
		if(Integer.parseInt(age)==50){
			product_age=ProductDAO.product_50_age();
			request.setAttribute("age", age);
		}
		
		request.setAttribute("product_age", product_age);
		request.setAttribute("main_jsp", "../ranking/rank_age_detail.jsp");
		return "../main/main.jsp";
	}
}
