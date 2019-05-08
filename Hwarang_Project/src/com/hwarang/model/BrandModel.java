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
	}
	
	@RequestMapping("brand/brand_main.hr")
	public String brand_Mainpage(HttpServletRequest request) {
		try
		{
			request.setCharacterEncoding("UTF-8"); // 컴파일 예외 => 반드시 컴파일 전 예외처리를 해야함
		}catch(Exception ex){
			ex.printStackTrace();
		}
		
		String brand=request.getParameter("brand");
		List<ProductVO> brand_mainlist=BrandDAO.brandMainPage(brand);
		
		request.setAttribute("brandMainPage", brand_mainlist);
		request.setAttribute("main_jsp", "../brand/brand_main.jsp");
		
		return "../main/main.jsp";
	}
	

}
	
