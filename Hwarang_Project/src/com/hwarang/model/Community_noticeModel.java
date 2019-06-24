package com.hwarang.model;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.plaf.synth.SynthSeparatorUI;

import com.hwarang.controller.RequestMapping;
import com.hwarang.dao.BoardDAO;
import com.hwarang.vo.BoardVO;
import com.hwarang.vo.CommunityReplyVO;

public class Community_noticeModel {
	@RequestMapping("community/community_notice.hr")
	public String Community_notice_list(HttpServletRequest request, HttpServletResponse response) {

		String b_cate_no = request.getParameter("b_cate_no");
		request.setAttribute("b_cate_no", b_cate_no);
		
		HttpSession session=request.getSession();
		int member_no=(int)session.getAttribute("member_no"); //login_ok.hr에서 받음
		
		
		request.setAttribute("member_no", member_no);
		String b_no=request.getParameter("b_no");
		
		//페이지 나누기
		String page = request.getParameter("page");
		if (page == null)
			page = "1";
		int curpage = Integer.parseInt(page);
		Map map = new HashMap();
		int rowSize = 10;
		int start = (curpage * rowSize) - (rowSize - 1); // 1 , 11
		int end = curpage * rowSize;// 10,20
		
		//list출력 mapper에 파라미터값 3개 넘겨주기 위해 매개변수 map으로 저장 
		map.put("start", start);
		map.put("end", end);
		map.put("b_cate_no", b_cate_no);
		List<BoardVO> list = BoardDAO.boardListData(map);
		
		int totalpage=BoardDAO.boardTotalPage();
		
		final int BLOCK=5;
		int startPage=((curpage-1)/BLOCK*BLOCK)+1;
		int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
	    int allPage=totalpage;
		if(endPage>allPage)
			  endPage=allPage;
		
		// 현재페이지,총페이지,List
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("list", list);
		// 블럭별 출력
		request.setAttribute("BLOCK", BLOCK);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("allPage", allPage);

		request.setAttribute("main_jsp", "../community/community_notice.jsp");
		return "../main/main.jsp";
	}

	@RequestMapping("community/community_detail.hr")
	public String Community_detail(HttpServletRequest request, HttpServletResponse response) {
		String b_no = request.getParameter("b_no");
		String b_cate_no = request.getParameter("b_cate_no");
		Map map = new HashMap();
		map.put("b_no", Integer.parseInt(b_no));
		map.put("b_cate_no", Integer.parseInt(b_cate_no));
		
		BoardVO vo = BoardDAO.boardDetailData(map);
		
		List<CommunityReplyVO> list=BoardDAO.replyListData(Integer.parseInt(b_no));
		
		request.setAttribute("list", list);
		//crvo=BoardDAO.replyListData(Integer.parseInt(b_no));
		
		request.setAttribute("vo", vo);
		request.setAttribute("main_jsp", "../community/community_detail.jsp");

		return "../main/main.jsp";
	}

	//
	@RequestMapping("community/community_update.hr")
	public String board_update_date(HttpServletRequest request, HttpServletResponse response) {
		String b_no = request.getParameter("b_no");
		String b_cate_no = request.getParameter("b_cate_no");
		Map map = new HashMap();
		map.put("b_no", Integer.parseInt(b_no));
		map.put("b_cate_no", Integer.parseInt(b_cate_no));

		BoardVO vo = BoardDAO.boardUpdateData(map);
		
		
		request.setAttribute("vo", vo);
		request.setAttribute("main_jsp", "../community/community_update.jsp");

		return "../main/main.jsp";
	}

	@RequestMapping("community/community_update_ok.hr")
	public String board_update_ok(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (Exception ex) {
			System.out.println("인코딩:" + ex.getMessage());
		}

		String b_no = request.getParameter("b_no");
		String b_cate_no = request.getParameter("b_cate_no");
		String member_no = request.getParameter("member_no");
		String b_subject = request.getParameter("b_subject");
		String b_content = request.getParameter("b_content");

		// DAO연결 mapper(SQL) => DAO에서 처리
		BoardVO vo = new BoardVO();
		vo.setB_no(Integer.parseInt(b_no));
		vo.setB_subject(b_subject); //
		vo.setMember_no(Integer.parseInt(member_no));
		vo.setB_cate_no(Integer.parseInt(b_cate_no));
		vo.setB_content(b_content);//

		BoardDAO.boardUpdate(vo);

		return "redirect:../community/community_detail.hr?b_no=" + b_no + "&b_cate_no=" + b_cate_no;
	}

	@RequestMapping("community/community_insert.hr")
	public String board_insert(HttpServletRequest request, HttpServletResponse response) {
		// include 파일\
		HttpSession session = request.getSession();
		String member_no=request.getParameter("member_no");
		String b_cate_no = request.getParameter("b_cate_no");
		
		request.setAttribute("member_no", member_no);
		request.setAttribute("b_cate_no", b_cate_no);
		request.setAttribute("main_jsp", "../community/community_insert.jsp");

		return "../main/main.jsp";
	}

	@RequestMapping("community/community_insert_ok.hr")
	public String community_insert_ok(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (Exception ex) {
		}

		// 데이터 값 받기
		String b_cate_no = request.getParameter("b_cate_no");
		String b_subject = request.getParameter("b_subject");
		String b_content = request.getParameter("b_content");
		// String b_no=request.getParameter("b_no");
		HttpSession session=request.getSession();
		int member_no=(int)session.getAttribute("member_no");
		String name=(String) session.getAttribute("name");
		// VO에 묶어서
		BoardVO vo = new BoardVO();
		vo.setB_subject(b_subject);
		vo.setB_content(b_content);
		vo.setB_cate_no(Integer.parseInt(b_cate_no));
		vo.setMember_no(member_no);
		vo.setName(name);
		// DAO 연결
		BoardDAO.boardInsert(vo);

		// 화면 ==> 게시물 목록으로 이동
		return "redirect:../community/community_notice.hr?b_cate_no=" + b_cate_no;
	}

	// 삭제
	@RequestMapping("community/community_delete.hr")
	public String board_delete(HttpServletRequest request, HttpServletResponse response) {
		String b_no = request.getParameter("b_no");
		String b_cate_no = request.getParameter("b_cate_no");
		// DAO => mapper => DAO => Model 에서 호출
		BoardDAO.boardDelete(Integer.parseInt(b_no));
		return "redirect:../community/community_notice.hr?b_cate_no=" + b_cate_no;
	}
	
	// 찾기
	@RequestMapping("community/community_find.hr")
	public String board_find(HttpServletRequest request, HttpServletResponse response) {
		try {
			// 한글 변환
			request.setCharacterEncoding("UTF-8");
		} catch (Exception ex) {}

		String q=request.getParameter("q");
		String b_cate_no=request.getParameter("b_cate_no");
		Map map=new HashMap();
		map.put("q", q);
		map.put("b_cate_no", b_cate_no);
		
		int count = BoardDAO.boardFindCount(map);
		if (count != 0) {
			List<BoardVO> list = BoardDAO.boardFindData(map);
			request.setAttribute("list", list);
		}
		request.setAttribute("count", count);
		request.setAttribute("main_jsp", "../community/community_find.jsp");
		
		return "../main/main.jsp";
	}
	
	//댓글이다!!!!!!!!!!!!!!!!!!
	@RequestMapping("community/reply_insert.hr")
	  public String reply_insert(HttpServletRequest request, HttpServletResponse response)
	  {
		  try
		  {
			  request.setCharacterEncoding("UTF-8");
		  }catch(Exception ex){}
		  
		  //hidden
		  String b_no=request.getParameter("b_no");
		  String b_cate_no=request.getParameter("b_cate_no");
	
		  String r_content=request.getParameter("r_content");

		  // session
		  HttpSession session=request.getSession();
		  String id=(String)session.getAttribute("id");
		  String name=(String)session.getAttribute("name");

		  //데이터=>DAO로 전송
		  CommunityReplyVO vo=new CommunityReplyVO();
		  vo.setB_no(Integer.parseInt(b_no));
		  vo.setName(name);
		  vo.setR_content(r_content);
		  BoardDAO.replyInsert(vo);
		  //화면 변경
		  return "redirect:../community/community_detail.hr?b_no="+b_no+"&b_cate_no="+b_cate_no;
		  // URI => ../board/detail.do
	  }
	
	  @RequestMapping("community/reply_update.hr")
	  public String reply_update(HttpServletRequest request, HttpServletResponse response)
	  {
		  try
		  {
			  request.setCharacterEncoding("UTF-8");
		  }catch(Exception ex){}
		  
		  HttpSession session=request.getSession();
		  String id=(String)session.getAttribute("id");
		  String name=(String)session.getAttribute("name");
		  String b_cate_no=request.getParameter("b_cate_no");
		  String b_no=request.getParameter("b_no");
		  //hidden
		  String r_content=request.getParameter("r_content");
		  String r_no=request.getParameter("r_no");	
		  
		  //DAO => Update 요청
		  CommunityReplyVO rvo=new CommunityReplyVO();
		  rvo.setR_no(Integer.parseInt(r_no));
		  rvo.setB_no(Integer.parseInt(b_no));
		  rvo.setName(name);
		  rvo.setR_content(r_content);
		  BoardDAO.boardReplyUpdate(rvo);
		  
		  return "redirect:../community/community_detail.hr?b_no="+b_no+"&b_cate_no="+b_cate_no;
	  }
	  
	  @RequestMapping("community/reply_delete.hr")
	  public String reply_delete(HttpServletRequest request, HttpServletResponse response)
	  {
		  String r_no=request.getParameter("r_no");
		  String b_no=request.getParameter("b_no");
		  String b_cate_no=request.getParameter("b_cate_no");
		  CommunityReplyVO vo=new CommunityReplyVO();
		  vo.setR_no(Integer.parseInt(r_no));
		  vo.setB_no(Integer.parseInt(b_no));

		  //DAO연결
		  BoardDAO.boardReplyDelete(vo);
		  return "redirect:../community/community_detail.hr?b_no="+b_no+"&b_cate_no="+b_cate_no;
	  }
	  
	 
}
