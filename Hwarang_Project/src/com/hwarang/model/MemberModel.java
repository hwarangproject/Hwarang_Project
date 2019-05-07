package com.hwarang.model;



import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;

import com.hwarang.controller.RequestMapping;
import com.hwarang.dao.MemberDAO;
import com.hwarang.vo.MemberVO;

public class MemberModel {
	@RequestMapping("member/member_make.hr")
    public String memeber_make_page(HttpServletRequest request)
    {
		request.setAttribute("main_jsp", "../member/member_make.jsp");
    	return "../main/main.jsp";
    }
	
	
	@RequestMapping("Hwarang/skin_test.hr")
	public String skintest_page(HttpServletRequest request){
		return "../Hwarang/skin_test.jsp";
		
	}
	
	@RequestMapping("member/idcheck.hr")
	  public String id_check(HttpServletRequest request)
	  {
		  return "../member/idcheck.jsp";
	  }
	  
	  @RequestMapping("member/idcheck_result.hr")
	  public String idcheck_result(HttpServletRequest request)
	  {
		  String id=request.getParameter("id");
		  //DAO연결 
		  int count=MemberDAO.idcheck(id);
		  request.setAttribute("count", count);
		  return "../member/idcheck_result.jsp";
	  }
	
	  
	  /*
	   * MEMBER_NO   NOT NULL NUMBER         
ID          NOT NULL VARCHAR2(20)   
PW          NOT NULL VARCHAR2(20)   
EMAIL       NOT NULL VARCHAR2(100)  
NAME        NOT NULL VARCHAR2(34)   
NICKNAME    NOT NULL VARCHAR2(20)   
BDAY        NOT NULL DATE           
SKIN_TYPE            VARCHAR2(12)   
BRAND_LIKE           VARCHAR2(4000) 
ADDR        NOT NULL VARCHAR2(400)  
SEX         NOT NULL VARCHAR2(4)    
PROFILE_IMG          VARCHAR2(4000) 
AGE_GROUP   NOT NULL NUMBER         
POUCH_NO             NUMBER 
	   */
      @RequestMapping("member/member_make_ok.hr") 
	  public String member_join_ok(HttpServletRequest request) throws ParseException
	  {
		
		
		  // 요청값 받기 
		  try
		  {
			  //한글 변환
			  request.setCharacterEncoding("UTF-8");
		  }catch(Exception ex){}
		  
		  String id=request.getParameter("id");
		  String pw=request.getParameter("password");
		  String email=request.getParameter("email");
		  String name=request.getParameter("name");
		  String nickname=request.getParameter("nickname");
		  String y=request.getParameter("yyyy");
		  String m=request.getParameter("mm");
		  String d= request.getParameter("dd");
		  String skin_type=request.getParameter("skin_type");
		  String brand_like=request.getParameter("brand_like");
		  String addr=request.getParameter("address");
		  String sex=request.getParameter("gender");
		 // String profile_img=request.getParameter("profile_img");
		 //int age_group=request.getParameter("age_group");
		  
		 /* id,name,nickname,email,password,address, yyyy,mm,dd, gender, baby, brand_like, skin_type, */
		
		  Date date=  java.sql.Date.valueOf(y+"-"+m+"-"+d);
		  
		  System.out.println(id);
		  System.out.println(date);
		  int age_group;
		  int temp_yy = Integer.parseInt(y.substring(2));
		  if(temp_yy>=60 && temp_yy<70)
			  age_group=50;
		  else if(temp_yy>=70 && temp_yy<80)
			  age_group=40;
		  else if(temp_yy>=80 && temp_yy<90)
			  age_group=30;
		  else if(temp_yy>=90 && temp_yy<=99)
			  age_group=20;
		  else 
			  age_group=10;
			  
			  
		  MemberVO vo=new MemberVO();
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
		  //vo.setProfile_img(profile_img);
		  vo.setAge_group(age_group);
		  //DAO연결 
		  MemberDAO.memberInsert(vo);
		  
		  return "redirect:../main/main.hr";
	  }
	
}
