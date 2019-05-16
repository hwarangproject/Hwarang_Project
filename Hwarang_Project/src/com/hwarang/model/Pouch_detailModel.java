package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hwarang.controller.RequestMapping;
import com.hwarang.vo.*;
import com.hwarang.dao.*;
import java.util.*;

public class Pouch_detailModel {
	/*
	 * @RequestMapping("pouch/pouch_detail.hr") public String
	 * pouch_detail_page(HttpServletRequest request, HttpServletResponse
	 * response) {
	 * 
	 * request.setAttribute("main_jsp", "../pouch/pouch_detail.jsp"); return
	 * "../main/main.jsp"; }
	 */

	@RequestMapping("pouch/pouch_detail.hr")
	public String pouchDetailData(HttpServletRequest request, HttpServletResponse response) {
		try {
			// 상세보기 내용
			String pouch_no = request.getParameter("pouch_no");
			String pouch_score = request.getParameter("pouch_score");
			// DAO연결 => 해당 게시물의데이터 가지고 오기
			PouchVO vo = PouchDAO.pouchDetailData(Integer.parseInt(pouch_no));
	
			List<PouchVO> pList = new ArrayList<PouchVO>();
			List<Pouch_ReplyVO> reList=new ArrayList<Pouch_ReplyVO>();
			// JSP전송
			request.setAttribute("vo", vo);
			request.setAttribute("pList", pList);
			request.setAttribute("reList", reList);
			request.setAttribute("main_jsp", "../pouch/pouch_detail.jsp");
		} catch (Exception e) {
			System.out.println("파우치 디테일 모델"+e.getMessage());
		}

		return "../main/main.jsp";
	}
	////////////////////////////////////////////////댓글
	@RequestMapping("pouch/pouch_reply_insert.hr")
	public String pouch_reply_insert(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		MemberVO mvo = ProfileDAO.getMemberData(id);
		String pouch_no = request.getParameter("pouch_no");
		String content = request.getParameter("content");
		String pouch_rate = request.getParameter("pouch_rate");
		String pouch_reply_no=request.getParameter("pouch_reply_no");
		
		// DAO로 데이터 전송
		Pouch_ReplyVO revo = new Pouch_ReplyVO();
		revo.setContent(content);
		revo.setPouch_rate(Integer.parseInt(pouch_rate));
		revo.setPouch_no(Integer.parseInt(pouch_no));
		revo.setMember_no(mvo.getMember_no());
		revo.setPouch_reply_no(Integer.parseInt(pouch_reply_no));
		PouchDAO.pouchReplyInsert(revo);
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (Exception e) {
			
			
			System.out.println("aaaa:"+pouch_reply_no);
			System.out.println("bbbb"+pouch_rate);
		}

		
		
		
		
		//request.setAttribute("revo", revo);

		//request.setAttribute("main_jsp", "../pouch/pouch_detail.jsp");

		return "redirect:../pouch/pouch_detail.hr?pouch_no=" + pouch_no;
	}

	@RequestMapping("pouch/poucht_reply_delete.hr")
	public String poucht_reply_delete(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		String pouch_reply_no = request.getParameter("pouch_reply_no");
		MemberVO mvo = ProfileDAO.getMemberData(id);
		String pouch_no = request.getParameter("pouch_no");

		Pouch_ReplyVO revo = new Pouch_ReplyVO();
		revo.setMember_no(mvo.getMember_no());
		revo.setPouch_reply_no(Integer.parseInt(pouch_reply_no));
		PouchDAO.pouchReplyDelete(revo);

		return "redirect:../pouch/pouch_detail.hr?pouch_no=" + pouch_no;
	}

	@RequestMapping("pouch/pouch_reply_update.hr")
	public String pouch_reply_update(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (Exception ex) {
		}

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		String pouch_no = request.getParameter("pouch_no");
		String content = request.getParameter("content");
		String pouch_reply_no = request.getParameter("pouch_reply_no");
		MemberVO mvo = ProfileDAO.getMemberData(id);

		Pouch_ReplyVO revo = new Pouch_ReplyVO();
		revo.setMember_no(mvo.getMember_no());
		revo.setPouch_reply_no(Integer.parseInt(pouch_reply_no));
		revo.setContent(content);
		PouchDAO.pouchReplyUpdate(revo);

		return "redirect:../pouch/pouch_detail.hr?pouch_no=" + pouch_no;
	}
}
