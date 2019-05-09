package com.hwarang.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.hwarang.controller.RequestMapping;
import com.hwarang.dao.ProductDAO;
import com.hwarang.vo.ProductVO;
import com.hwarang.manager.Item;
import com.hwarang.manager.NewsManager;
import com.hwarang.manager.NaverNewsManager;
import com.hwarang.vo.NewsVO;

public class MainModel {
	@RequestMapping("main/main.hr")
    public String main_page(HttpServletRequest request)
    {
		
		List<ProductVO> list=ProductDAO.productListData();
		
		NaverNewsManager news=new NaverNewsManager();
		List<NewsVO> newsList=news.newsAllData("화장품");
		request.setAttribute("newsList", newsList);
		
		
		request.setAttribute("productListData", list);
		request.setAttribute("main_jsp", "default.jsp");
    	return "main.jsp";
    }
	
	
	@RequestMapping("news/news.hr")
	public String main_news(HttpServletRequest request) {
		String data = request.getParameter("data");
		if (data == null)
			data = "화장품";
		List<NewsVO> news_list = NaverNewsManager.newsAllData(data);
		request.setAttribute("news_list", news_list);
		request.setAttribute("main_jsp", "../news/news.jsp");
		return "../main/main.jsp";
	}
}
