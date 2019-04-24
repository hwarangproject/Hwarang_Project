package hwarang.model;

import javax.servlet.http.HttpServletRequest;

import hwarang.controller.RequestMapping;

public class MemberModel {
	@RequestMapping("member.do")
	public String board_page(HttpServletRequest request){
		request.setAttribute("msg", "회원가입");
		//"main_jsp" ==> include할때 id값? => 사용자 정의
		request.setAttribute("main_jsp", "../member/member.jsp");
		return "main/main.jsp";
	}
}
