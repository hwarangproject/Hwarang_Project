package com.hwarang.model;

import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hwarang.controller.RequestMapping;
import com.hwarang.dao.ProductDAO;
import com.hwarang.vo.*;

public class Rank_ProductModel {
	@RequestMapping("ranking/rank_product.hr")
	public String rank_product_page(HttpServletRequest request,HttpServletResponse response) {

		String dcno=request.getParameter("dcno");
		List<ProductVO> product_list=new ArrayList<ProductVO>();
		
		Map map=new HashMap();
		if(dcno==null){
			String start=request.getParameter("start");
			String end=request.getParameter("end");
			
			if(start==null){
				start="1";
			}
			if(end==null) {
				end="27";
			}
			
			map.put("start",start);
			map.put("end",end);
			
			product_list=ProductDAO.product_category(map);
		}
		else{
			product_list=ProductDAO.product_detail_category(Integer.parseInt(dcno));
		}
		
		List<DetailcateVO> detail_cate_list=ProductDAO.detail_cate_list();
		
		//request.setAttribute("product_detail_category", product_detail_category);
		request.setAttribute("product_cate_list", product_list);
		request.setAttribute("detail_cate_list", detail_cate_list);
		request.setAttribute("main_jsp", "../ranking/rank_product.jsp");
		return "../main/main.jsp";
	}

}
