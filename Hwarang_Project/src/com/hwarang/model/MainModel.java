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
		
		// ���� ���� ���
		NaverNewsManager news=new NaverNewsManager();
		List<NewsVO> newsList=news.newsAllData("ȭ��ǰ");
		request.setAttribute("newsList", newsList);
		
		// ���� �Ŀ�ġ ���
		List<PouchVO> main_pouch_list=PouchDAO.mainPouchListData();
		request.setAttribute("main_pouch_list", main_pouch_list);
		
		// ȭ��ǰ ��õ(�Ŀ�ġ ���� ��� ��)
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
			data = "ȭ��ǰ";
		List<NewsVO> news_list = NaverNewsManager.newsAllData(data);
		request.setAttribute("news_list", news_list);
		request.setAttribute("main_jsp", "../news/news.jsp");
		return "../main/main.jsp";
	}
	
}
