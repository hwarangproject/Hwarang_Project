package com.hwarang.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hwarang.controller.*;
import com.hwarang.dao.FindDAO;
import com.hwarang.vo.ProductVO;
public class FindModel 
{

	   @RequestMapping("find/product_find.hr")
	   public String product_find(HttpServletRequest request, HttpServletResponse response)
	   {
		   String key = request.getParameter("key");
		   System.out.println(key);
		   
		   List<ProductVO> list = FindDAO.product_find(key);
		   System.out.println("list.size:"+list.size());
		   request.setAttribute("product_find_list", list);
		   request.setAttribute("count", list.size());
		   //request.setAttribute("main_jsp", "../find/product_find.jsp");   
		  // return "../find/product_find.jsp";
		   return "../find/product_find.jsp";
		   
	   }
}
