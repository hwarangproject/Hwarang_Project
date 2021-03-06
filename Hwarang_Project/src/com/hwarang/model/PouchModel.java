package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.lang.annotation.Annotation;
import java.util.*;
import com.hwarang.controller.RequestMapping;
import com.hwarang.vo.*;
import com.hwarang.dao.*;

public class PouchModel {
	@RequestMapping("pouch/pouch.hr")
	public String pouch_list(HttpServletRequest request, HttpServletResponse response) {
		String page = request.getParameter("page");
		if (page == null)
			page = "1";
		int curpage = Integer.parseInt(page);
		Map map = new HashMap();
		int rowSize = 6;
		int start = (curpage * rowSize) - (rowSize - 1); // 1 , 11
		int end = curpage * rowSize;// 10,20
		map.put("start", start);
		map.put("end", end);

		List<PouchVO> list = PouchDAO.pouchListData(map);
		int totalpage = PouchDAO.pouchTotalPage();

		List<MemberVO> mlist = new ArrayList<MemberVO>();
		for (int i = 0; i < list.size(); i++) {
			MemberVO mvo = new MemberVO();
			int mno = list.get(i).getMember_no();
			mvo = PouchDAO.memberData(mno);
			mlist.add(mvo);
		}

		// 페이지 출력 1~5 , 6~10 => curpage(1~5) => startPage=1
		final int BLOCK = 5;
		int startPage = ((curpage - 1) / BLOCK * BLOCK) + 1;
		/*
		 * 1~5 1 2 3 4 5 6~10 6 7 8 9 10 11~15 11 12 13 14 15
		 */
		int endPage = ((curpage - 1) / BLOCK * BLOCK) + BLOCK;

		int allPage = totalpage;
		if (endPage > allPage)
			endPage = allPage;
		// 현재페이지,총페이지,List
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("list", list);

		// 멤버정보
		request.setAttribute("mlist", mlist);

		// 블럭별 출력
		request.setAttribute("BLOCK", BLOCK);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("allPage", allPage);

		request.setAttribute("main_jsp", "../pouch/pouch.jsp");

		return "../main/main.jsp";
	}

	// 검색
	@RequestMapping("pouch/pouch_find.hr")
	  public String pouch_find(HttpServletRequest request, HttpServletResponse response)
	  {
		  try
		  {
			  request.setCharacterEncoding("UTF-8");
		  }catch(Exception ex){}
		  
		  String fs=request.getParameter("fs");//<select>
		  // fieldString => column명 => name,subject,content
		  String ss=request.getParameter("ss");
		  // SearchString => 검색어
		  // DAO => 검색결과를 출력 
		  Map map=new HashMap();
		  map.put("fs", fs);
		  map.put("ss", ss);
		  /*
		   *   parameterType => 지정할 수 있는 변수 1개
		   *   여러개 데이터를 전송 : ~VO , Map
		   *   ==> mapper=>DAO
		   */
		  int count=PouchDAO.pouchFindCount(map);
		  if(count!=0)
		  {
			  List<PouchVO> findlist=PouchDAO.pouchFindData(map);
			  request.setAttribute("findlist", findlist);
		  }
		  request.setAttribute("count", count);
		  request.setAttribute("main_jsp", "../pouch/pouch_find.jsp");
		  
		  return "../main/main.jsp";
	  }
}
