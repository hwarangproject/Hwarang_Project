package com.hwarang.model;
import java.util.*;
import javax.servlet.http.HttpServletRequest;
import com.hwarang.dao.*;
import com.hwarang.vo.*;
import com.hwarang.controller.RequestMapping;

public class BrandModel {
	@RequestMapping("brand/brand.hr")
	public String brand_list_page(HttpServletRequest request) {
		
		//String brand_no=request.getParameter("brand_no");
		List<ProductVO> brand_list=BrandDAO.brandListData(request);
		
		request.setAttribute("brandListData", brand_list);
		request.setAttribute("main_jsp", "../brand/brand.jsp");
		
//		brand_list=new ArrayList<ProductVO>();
//		Map map=new HashMap();
//		if(brand_no==null)
//		{
//			String start=request.getParameter("start");
//			String end=request.getParameter("end");
//			if(start==null){
//				start="44000";
//			}
//			if(end==null) {
//				end="45207";
//			}
//			
//			map.put("start",start);
//			map.put("end",end);
//			
//			brand_list=BrandDAO.brandListSearch(map);
//		}
//		
//		request.setAttribute("brandListSearch", brand_list);
//		request.setAttribute("main_jsp", "../brand/brand_search.jsp");
		
		return "../main/main.jsp";
	}
	
	@RequestMapping("brand/brand_alpha.hr")
	public String brandListSearch(HttpServletRequest request)
	{
		
			String start=request.getParameter("start");
			String end=request.getParameter("end");
		
			List<ProductVO> brand_alpha_list=new ArrayList<ProductVO>();
			Map map=new HashMap();
			
			map.put("start",start);
			map.put("end",end);
			
			brand_alpha_list=BrandDAO.brandListSearch(map);
		
			request.setAttribute("brandListSearch", brand_alpha_list);
			request.setAttribute("main_jsp", "../brand/brand_alpha.jsp");
			
		return "../main/main.jsp";
	}
	
}
	
