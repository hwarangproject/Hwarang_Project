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
			List<Pouch_ReplyVO> prList = PouchDAO.pouchReplyListData(Integer.parseInt(pouch_no));
			request.setAttribute("prList", prList);
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
	// 댓글
		@RequestMapping("pouch/pouch_reply_insert.hr")
		public String pouch_reply_insert(HttpServletRequest request, HttpServletResponse response) {
			try {
				request.setCharacterEncoding("UTF-8");
			} catch (Exception ex) {
			}

			HttpSession session = request.getSession();
			String id = (String) session.getAttribute("id");
			MemberVO mvo = ProfileDAO.getMemberData(id);
			String pouch_no = request.getParameter("pouch_no");
			String content = request.getParameter("content");
			String pouch_rate = request.getParameter("pouch_rate");

			// DAO로 데이터 전송
			Pouch_ReplyVO prvo = new Pouch_ReplyVO();
			prvo.setContent(content);
			prvo.setPouch_rate(Integer.parseInt(pouch_rate));
			prvo.setPouch_no(Integer.parseInt(pouch_no));
			prvo.setMember_no(mvo.getMember_no());
			prvo.setMember_no2(mvo.getMember_no());
			PouchDAO.pouchReplyInsert(prvo);

			request.setAttribute("main_jsp", "../pouch/pouch_detail.jsp");

			return "redirect:../pouch/pouch_detail.hr?pouch_no=" + pouch_no;
		}

		@RequestMapping("pouch/pouch_reply_delete.hr")
		public String pouch_reply_delete(HttpServletRequest request, HttpServletResponse response) {
			HttpSession session = request.getSession();
			String id = (String) session.getAttribute("id");
			String pouch_reply_no = request.getParameter("pouch_reply_no");
			MemberVO mvo = ProfileDAO.getMemberData(id);
			String pouch_no = request.getParameter("pouch_no");

			Pouch_ReplyVO prvo = new Pouch_ReplyVO();
			prvo.setMember_no(mvo.getMember_no());
			prvo.setPouch_reply_no(Integer.parseInt(pouch_reply_no));
			PouchDAO.pouchReplyDelete(prvo);

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

			Pouch_ReplyVO prvo = new Pouch_ReplyVO();
			prvo.setMember_no(mvo.getMember_no());
			prvo.setPouch_reply_no(Integer.parseInt(pouch_reply_no));
			prvo.setContent(content);
			PouchDAO.pouchReplyUpdate(prvo);

			return "redirect:../pouch/pouch_detail.hr?pouch_no=" + pouch_no;
		}
}
