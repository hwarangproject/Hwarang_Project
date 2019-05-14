package com.hwarang.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hwarang.controller.RequestMapping;
import com.hwarang.dao.*;
import com.hwarang.vo.*;
import com.hwarang.manager.*;

public class MainModel {
	@RequestMapping("main/main.hr")
    public String main_page(HttpServletRequest request,HttpServletResponse response)
    {
		
		List<ProductVO> list=ProductDAO.productListData();
		
		// 메인 뉴스 출력
		NaverNewsManager news=new NaverNewsManager();
		List<NewsVO> newsList=news.newsAllData("화장품");
		request.setAttribute("newsList", newsList);
		
		// 메인 파우치 목록
		List<PouchVO> main_pouch_list=PouchDAO.mainPouchListData();
		request.setAttribute("main_pouch_list", main_pouch_list);
		
		// 화장품 추천(파우치 많이 담긴 수)
		List<ProductVO> recommend_ProductData=ProductDAO.recommend_ProductData();
		request.setAttribute("recommend_ProductData", recommend_ProductData);
		
		
		request.setAttribute("productListData", list);
		request.setAttribute("main_jsp", "default.jsp");
    	return "main.jsp";
    }
	
	
	@RequestMapping("news/news.hr")
	public String main_news(HttpServletRequest request,HttpServletResponse response) {
		String data = request.getParameter("data");
		if (data == null)
			data = "화장품";
		List<NewsVO> news_list = NaverNewsManager.newsAllData(data);
		request.setAttribute("news_list", news_list);
		request.setAttribute("main_jsp", "../news/news.jsp");
		return "../main/main.jsp";
	}
	
}
