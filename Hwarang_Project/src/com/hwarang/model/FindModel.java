package com.hwarang.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hwarang.controller.*;
import com.hwarang.dao.FindDAO;
import com.hwarang.dao.ProductDAO;
import com.hwarang.vo.ProductVO;
public class FindModel 
{

	   @RequestMapping("find/product_find.hr")
	   public String product_find(HttpServletRequest request, HttpServletResponse response)
	   {
		   String key = request.getParameter("key");
		   String page = request.getParameter("page");
		   List<ProductVO> list = FindDAO.product_find(key);
		   
		   System.out.println(key);
		   
		   if (page == null)
				page = "1";
			
			int curpage=Integer.parseInt(page);
			int rowSize=12;
			int start2=(curpage*rowSize)-(rowSize)+1; // 1, 13
			int end2=curpage*rowSize; // 12 24
			
			int totalpage=FindDAO.product_find_Page(key);
			
			final int BLOCK=5;
			int startPage=((curpage-1)/BLOCK*BLOCK)+1; 
			int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
			
			int allPage=totalpage;
			if(endPage>allPage)
				endPage=allPage;
			
			// 블럭별 출력
			request.setAttribute("BLOCK", BLOCK);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			request.setAttribute("allPage", allPage);
					
			// 현재 페이지, 총페이지, List
			request.setAttribute("curpage", curpage);
			request.setAttribute("totalpage", totalpage);		
		    
		   System.out.println("list.size:"+list.size());
		   request.setAttribute("product_find_list", list);
		   request.setAttribute("count", list.size());
		   //request.setAttribute("main_jsp", "../find/product_find.jsp");   
		  // return "../find/product_find.jsp";
		   return "../find/product_find.jsp?page="+page;
		   
	   }
}
