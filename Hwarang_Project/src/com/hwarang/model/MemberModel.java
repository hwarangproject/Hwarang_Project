package com.hwarang.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.io.File;
import java.io.IOException;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hwarang.controller.RequestMapping;
import com.hwarang.dao.MemberDAO;
import com.hwarang.vo.MemberVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MemberModel {
	@RequestMapping("member/member_make.hr")
	public String memeber_make_page(HttpServletRequest request,HttpServletResponse response) {
		request.setAttribute("main_jsp", "../member/member_make.jsp");
		return "../main/main.jsp";
	}

	@RequestMapping("Hwarang/skin_test.hr")
	public String skintest_page(HttpServletRequest request,HttpServletResponse response) {
		return "../Hwarang/skin_test.jsp";

	}
	
	@RequestMapping("Hwarang/skin_test_ok.hr")
	public String skintest_ok(HttpServletRequest request,HttpServletResponse response) {
		
		String checklist = request.getParameter("check");
		System.out.println("checklist:"+checklist);
		String[] list = checklist.split(",");
		int[] sum = new int[4];
		//피부테스트 처리 
		for(String s : list)
		{
			int temp = Integer.parseInt(s);
			System.out.println(temp);
			if( temp>=1 && temp<=6)
				sum[0]++;
			else if(temp>=7 && temp<=11)
				sum[1]++;
			else if(temp>=12 && temp<=17)
				sum[2]++;
			else if(temp>=18 && temp<=22)
				sum[3]++;
		}
		//max_index 1이면 건성 2면 지성 ...
		int max_index = 0;
		for(int i=1; i<4; i++)
		{
			if(sum[max_index] < sum[i])
				max_index = i;
		}
		System.out.println("max:"+max_index+1);
		request.setAttribute("test_result", max_index+1);
		return "../Hwarang/skin_test_ok.jsp";
	}
	
	
	@RequestMapping("member/idcheck.hr")
	public String id_check(HttpServletRequest request,HttpServletResponse response) {
		return "../member/idcheck.jsp";
	}

	@RequestMapping("member/idcheck_result.hr")
	public String idcheck_result(HttpServletRequest request,HttpServletResponse response) {
		String id = request.getParameter("id");
		// DAO연결
		int count = MemberDAO.idcheck(id);
		request.setAttribute("count", count);
		return "../member/idcheck_result.jsp";
	}

	/*
	 * MEMBER_NO NOT NULL NUMBER ID NOT NULL VARCHAR2(20) PW NOT NULL
	 * VARCHAR2(20) EMAIL NOT NULL VARCHAR2(100) NAME NOT NULL VARCHAR2(34)
	 * NICKNAME NOT NULL VARCHAR2(20) BDAY NOT NULL DATE SKIN_TYPE VARCHAR2(12)
	 * BRAND_LIKE VARCHAR2(4000) ADDR NOT NULL VARCHAR2(400) SEX NOT NULL
	 * VARCHAR2(4) PROFILE_IMG VARCHAR2(4000) AGE_GROUP NOT NULL NUMBER POUCH_NO
	 * NUMBER
	 */
	@RequestMapping("member/member_make_ok.hr")
	public String member_join_ok(HttpServletRequest request,HttpServletResponse response) throws ParseException {

		MemberVO vo = new MemberVO();
		// 요청값 받기
		try { // 한글 변환
			request.setCharacterEncoding("UTF-8");
		} catch (Exception ex) {
		}

		// 업로드
		String path = "C:\\Hwarang\\git\\Hwarang_Project\\Hwarang_Project\\WebContent\\profile_img_upload";
		int size = 1024 * 1024 * 100;
		String enctype = "UTF-8";

		MultipartRequest mr;
		try {
			
			mr = new MultipartRequest(request, path, size, enctype, new DefaultFileRenamePolicy());
			String profile_img = mr.getOriginalFileName("logo");
			System.out.println("이미지파일:" + profile_img);
			vo.setProfile_img(profile_img);
			if (profile_img == null) {
				vo.setProfile_img("profile_defalut.jpg");
		
			} else {
				//File file = new File(path + "\\" + profile_img);
				vo.setProfile_img(profile_img);
			}
			
			
			String id = mr.getParameter("id");
			String pw = mr.getParameter("password");
			String email = mr.getParameter("email");
			String name = mr.getParameter("name");
			String nickname = mr.getParameter("nickname");
			String y = mr.getParameter("yyyy");
			String m = mr.getParameter("mm");
			String d = mr.getParameter("dd");
			String skin_type = mr.getParameter("skin_type");
			String brand_like = mr.getParameter("brand_like");
			String addr = mr.getParameter("address");
			String sex = mr.getParameter("gender");

			Date date = java.sql.Date.valueOf(y + "-" + m + "-" + d);

			System.out.println(id);
			System.out.println(date);
			int age_group;
			int temp_yy = Integer.parseInt(y.substring(2));
			if (temp_yy >= 60 && temp_yy < 70)
				age_group = 50;
			else if (temp_yy >= 70 && temp_yy < 80)
				age_group = 40;
			else if (temp_yy >= 80 && temp_yy < 90)
				age_group = 30;
			else if (temp_yy >= 90 && temp_yy <= 99)
				age_group = 20;
			else
				age_group = 10;
			String addr2 = mr.getParameter("addr2");
			String postcode = mr.getParameter("postcode");

			vo.setId(id);
			vo.setPw(pw);
			vo.setEmail(email);
			vo.setName(name);
			vo.setPw(pw);
			vo.setNickname(nickname);
			vo.setBday(date);
			vo.setSkin_type(skin_type);
			vo.setBrand_like(brand_like);
			vo.setAddr(addr);
			vo.setSex(sex);
			// vo.setProfile_img(profile_img);
			vo.setAge_group(age_group);
			vo.setAddr2(addr2);
			vo.setPostcode(postcode);
			// DAO연결
			MemberDAO.memberInsert(vo);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:../main/main.hr";
	}

}
