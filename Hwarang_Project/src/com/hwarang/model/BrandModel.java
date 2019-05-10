package com.hwarang.model;
import java.util.*;
import javax.servlet.http.HttpServletRequest;
import com.hwarang.dao.*;
import com.hwarang.vo.*;

import com.hwarang.controller.RequestMapping;

public class BrandModel {
	@RequestMapping("brand/brand.hr")
	public String brand_list_page(HttpServletRequest request) {
		
		String start=request.getParameter("start");
		String end=request.getParameter("end");
		String page=request.getParameter("page");
		
		
		List<ProductVO> brand_list=new ArrayList<ProductVO>();
		
		int curpage=Integer.parseInt(page);
		int rowSize=20;
		int start2=(curpage*rowSize)-(rowSize)+1; // 1, 13
		int end2=curpage*rowSize; 
		
		if(start==null)
			start="0";
		if(end==null)
			end="55203";
		if(page==null)
			page="1";
		
		Map map=new HashMap();
		map.put("start",start);
		map.put("end",end);
		map.put("start2", start2);
		map.put("end2", end2);
			
		brand_list=BrandDAO.brandListPageDivision(map);
		int totalpage=BrandDAO.brandListTotalPage(map);
		
		final int BLOCK=5;
		int startPage=((curpage-1)/BLOCK*BLOCK)+1; 
		int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
		
		int allPage=totalpage;
		if(endPage>allPage)
			endPage=allPage;
		
		request.setAttribute("start", start);
		request.setAttribute("end", end);
		request.setAttribute("BLOCK", BLOCK);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("allPage", allPage);
				
		// 현재 페이지, 총페이지, List
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalpage", totalpage);		
		request.setAttribute("brandListPageDivision", brand_list);
		request.setAttribute("main_jsp", "../brand/brand.jsp");
		
		return "../main/main.jsp";
	}
	
	/*@RequestMapping("brand/brand.hr")
	public String brand_list_page(HttpServletRequest request) {
		
		String start=request.getParameter("start");
		String end=request.getParameter("end");
		
		List<ProductVO> brand_list=new ArrayList<ProductVO>();
		
		Map map=new HashMap();
		
		if(start==null)
			start="0";
		if(end==null)
			end="55203";
		
		map.put("start",start);
		map.put("end",end);
			
		brand_list=BrandDAO.brandListSearch(map);
		request.setAttribute("brandListSearch", brand_list);
		request.setAttribute("main_jsp", "../brand/brand.jsp");
		
		return "../main/main.jsp";
	}*/
	
	
	@RequestMapping("brand/brand_main.hr")
	public String brand_Mainpage(HttpServletRequest request) {
		try
		{
			request.setCharacterEncoding("UTF-8"); // 컴파일 예외 => 반드시 컴파일 전 예외처리를 해야함
		}catch(Exception ex){
			ex.printStackTrace();
		}
		
		String brand=request.getParameter("brand");
		String page=request.getParameter("page");
		
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		Map map=new HashMap();
		int rowSize=12;
		int start=(curpage*rowSize)-(rowSize)+1; // 1, 13
		int end=curpage*rowSize; // 12 24
		map.put("start", start);
		map.put("end", end);
		map.put("brand", brand);
		
		List<ProductVO> brand_mainlist=BrandDAO.brandPageDivision(map);
		int totalpage=BrandDAO.brandTotalPage(brand);
		
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
		request.setAttribute("brand", brand);
		request.setAttribute("brandPageDivision", brand_mainlist);
		request.setAttribute("main_jsp", "../brand/brand_main.jsp");
		
		return "../main/main.jsp";
	}
	

}
	
