package com.hwarang.model;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hwarang.controller.RequestMapping;
import com.hwarang.dao.LoginDAO;
import com.hwarang.vo.MemberVO;

public class LoginModel {
	@RequestMapping("login/login.hr")
	public String login_page(HttpServletRequest request,HttpServletResponse response) {
		request.setAttribute("main_jsp", "../login/login.jsp");
		return "../main/main.jsp";
	}
	

	//로그인 클릭시 
	@RequestMapping("login/login_ok.hr")
	public String member_login_ok(HttpServletRequest request,HttpServletResponse response)
	{
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd");
		MemberVO vo = LoginDAO.memberLogin(id, pwd);
		//로그인시에 피룡한 데이터를 저장(Session)
		if(vo.getMsg().equals("OK"))
		{
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			session.setAttribute("name", vo.getName());
			session.setAttribute("skin_type", vo.getSkin_type());
			
			if(vo.getMember_no() <=499)
			{
				session.setAttribute("profile_img", vo.getProfile_img());
			}
			else
			{
				String path = "../profile_img_upload/"+vo.getProfile_img(); 
				session.setAttribute("profile_img", path);
			}
	
			//session.setAttribute("admin", vo.getAdmin());
		}
		
		//결과 
		request.setAttribute("res", vo.getMsg());
		return "../login/login_ok.jsp";
	}

	@RequestMapping("login/logout.hr")
	public String member_logout(HttpServletRequest request,HttpServletResponse response)
	{
		  //session에 있는 모든 데이터 삭제 => invalidate()
		  // session생성 
		  HttpSession session=request.getSession();
		  session.invalidate();
		  return "redirect:../main/main.hr";
	}
}
