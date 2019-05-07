package com.hwarang.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.hwarang.controller.RequestMapping;
import com.hwarang.dao.ProductDAO;
import com.hwarang.vo.ProductVO;

public class MainModel {
	@RequestMapping("main/main.hr")
    public String main_page(HttpServletRequest request)
    {
		List<ProductVO> list=ProductDAO.productListData();
		request.setAttribute("productListData", list);
		request.setAttribute("main_jsp", "default.jsp");
    	return "main.jsp";
    }
}
