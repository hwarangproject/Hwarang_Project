package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.hwarang.controller.RequestMapping;
import com.hwarang.dao.LoginDAO;
import com.hwarang.vo.MemberVO;

public class LoginModel {
	@RequestMapping("login/login.hr")
	public String login_page(HttpServletRequest request) {
		request.setAttribute("main_jsp", "../login/login.jsp");
		return "../main/main.jsp";
	}
	

	//�α��� Ŭ���� 
	@RequestMapping("login/login_ok.hr")
	public String member_login_ok(HttpServletRequest request)
	{
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd");
		MemberVO vo = LoginDAO.memberLogin(id, pwd);
		//�α��νÿ� �Ƿ��� �����͸� ����(Session)
		if(vo.getMsg().equals("OK"))
		{
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			session.setAttribute("name", vo.getName());
			//session.setAttribute("admin", vo.getAdmin());
		}
		
		//��� 
		request.setAttribute("res", vo.getMsg());
		return "../login/login_ok.jsp";
	}

	@RequestMapping("login/logout.hr")
	public String member_logout(HttpServletRequest request)
	{
		  //session�� �ִ� ��� ������ ���� => invalidate()
		  // session���� 
		  HttpSession session=request.getSession();
		  session.invalidate();
		  return "redirect:../main/main.hr";
	}
}
