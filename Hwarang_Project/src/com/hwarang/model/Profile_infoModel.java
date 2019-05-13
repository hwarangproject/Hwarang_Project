package com.hwarang.model;

import java.text.*;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hwarang.controller.RequestMapping;
import com.hwarang.dao.ProfileDAO;
import com.hwarang.vo.MemberVO;

public class Profile_infoModel {
	@RequestMapping("profile/profile_info.hr")
	public String profile_myactivity_page(HttpServletRequest request,HttpServletResponse response) {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		MemberVO vo = ProfileDAO.getMemberData(id);
		
		// ������� ������
		Date date = vo.getBday();  
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");  
		String bday = dateFormat.format(date);  
		String year = bday.substring(0,4);
		String month = bday.substring(5,7);
		String day = bday.substring(bday.length()-2,bday.length());
		
		// �ּ� ������ ó��
		String addr;
		if(vo.getAddr() == ""){
			addr = "�ּ��Է�";
		}
		else{
			addr = vo.getAddr();
		}
	
		request.setAttribute("year", year);
		request.setAttribute("month", month);
		request.setAttribute("day", day);
		request.setAttribute("addr", addr);
		request.setAttribute("vo", vo);
		request.setAttribute("main_jsp", "../profile/profile_info.jsp");
		return "../main/main.jsp";
	}
}

