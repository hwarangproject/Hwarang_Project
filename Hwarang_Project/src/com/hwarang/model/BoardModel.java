package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hwarang.controller.RequestMapping;

public class BoardModel {
	@RequestMapping("board.do")
	public String board_page(HttpServletRequest request, HttpServletResponse response){
		request.setAttribute("msg", "°Ô½ÃÆÇ");
		request.setAttribute("main_jsp", "../board/board.jsp");
		return "main/main.jsp";
	}
	
}
