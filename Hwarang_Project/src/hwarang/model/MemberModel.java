package hwarang.model;

import javax.servlet.http.HttpServletRequest;

import hwarang.controller.RequestMapping;

public class MemberModel {
	@RequestMapping("member.do")
	public String board_page(HttpServletRequest request){
		request.setAttribute("msg", "ȸ������");
		//"main_jsp" ==> include�Ҷ� id��? => ����� ����
		request.setAttribute("main_jsp", "../member/member.jsp");
		return "main/main.jsp";
	}
}
