package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;

import com.hwarang.controller.RequestMapping;

public class BoardModel {
	@RequestMapping("board.do")
	public String board_page(HttpServletRequest request){
		request.setAttribute("msg", "�Խ���");
		request.setAttribute("main_jsp", "../board/board.jsp");
		return "main/main.jsp";
	}
}
