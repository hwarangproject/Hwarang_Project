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
	

}
	
