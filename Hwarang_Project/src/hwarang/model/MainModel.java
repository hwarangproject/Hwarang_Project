package hwarang.model;

import javax.servlet.http.HttpServletRequest;

import hwarang.controller.RequestMapping;

public class MainModel {
	@RequestMapping("main.do")
    public String main_page(HttpServletRequest request)
    {
		request.setAttribute("main_jsp", "default.jsp");
    	return "main/main.jsp";
    }
}
