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
			// �󼼺��� ����
			String pouch_no = request.getParameter("pouch_no");
			String pouch_score = request.getParameter("pouch_score");
			// DAO���� => �ش� �Խù��ǵ����� ������ ����
			PouchVO vo = PouchDAO.pouchDetailData(Integer.parseInt(pouch_no));
	
			List<PouchVO> pList = new ArrayList<PouchVO>();
			List<Pouch_ReplyVO> reList = new ArrayList<Pouch_ReplyVO>();
			List<Pouch_ReplyVO> prList = PouchDAO.pouchReplyListData(Integer.parseInt(pouch_no));
			
			
			// detail�� ��ǰ���
			MemberVO mvo = PouchDAO.getMember_pouch_no(vo.getMember_no());

			List<Integer> product_no_in_pouch_list = PouchDAO.product_in_pouch(mvo.getPouch_no());
			List<ProductVO> product_list = new ArrayList<ProductVO>();
			for (int pno : product_no_in_pouch_list) {
				ProductVO pvo = ProductDAO.productDetailData(pno);
				product_list.add(pvo);
			}
			request.setAttribute("product_list", product_list);
			
			
			// JSP����
			request.setAttribute("vo", vo);
			request.setAttribute("pList", pList);
			request.setAttribute("reList", reList);
			request.setAttribute("prList", prList);
			request.setAttribute("main_jsp", "../pouch/pouch_detail.jsp");
		} catch (Exception e) {
			System.out.println("�Ŀ�ġ ������ ��"+e.getMessage());
		}

		return "../main/main.jsp";
	}
	// ���
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

			// DAO�� ������ ����
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
		
		// ���ƿ�

		@RequestMapping("pouch/pouch_like_ok.hr")
		public String pouch_like_ok(HttpServletRequest request, HttpServletResponse response) {

			String pouch_no = request.getParameter("pouch_no");
			PouchVO vo = PouchDAO.pouchDetailData(Integer.parseInt(pouch_no));

			// pouch_jjim���̺� ���� ���ƿ��ϸ� ���ã�⿡ ��⵵��
			HttpSession session = request.getSession();
			String id = (String) session.getAttribute("id");
			MemberVO mvo = ProfileDAO.getMemberData(id);
			Map map = new HashMap();
			map.put("pouch_no", Integer.parseInt(pouch_no));
			map.put("member_no", mvo.getMember_no());
			ProfileDAO.insertlikePouch_no(map);

			// DB�� ������Ʈ ���ƿ�+1
			PouchDAO.pouch_like_increment(Integer.parseInt(pouch_no));

			request.setAttribute("pouch_like", vo.getPouch_like() + 1);

			return "../pouch/pouch_like_ok.jsp";
		}

		@RequestMapping("pouch/pouch_like_ok_descent.hr")
		public String pouch_like_ok_descent(HttpServletRequest request, HttpServletResponse response) {

			String pouch_no = request.getParameter("pouch_no");
			PouchVO vo = PouchDAO.pouchDetailData(Integer.parseInt(pouch_no));

			// pouch_jjim���̺� ���� ���ƿ� ����ϸ� ���ã�⿡�� �����ǵ���
			HttpSession session = request.getSession();
			String id = (String) session.getAttribute("id");
			MemberVO mvo = ProfileDAO.getMemberData(id);
			Map map = new HashMap();
			map.put("pouch_no", Integer.parseInt(pouch_no));
			map.put("member_no", mvo.getMember_no());
			ProfileDAO.deletelikePouch_no(map);
			// DB�� ������Ʈ ���ƿ�-1
			PouchDAO.pouch_like_descent(Integer.parseInt(pouch_no));

			request.setAttribute("pouch_like", vo.getPouch_like() - 1);

			return "../pouch/pouch_like_ok.jsp";
		}
		
		@RequestMapping("pouch/pouch_make.hr")
		public String pouch_make(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (Exception ex) {
		}

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		String pouch_no = request.getParameter("pouch_no");
	
		MemberVO mvo = ProfileDAO.getMemberData(id);
		PouchVO vo = PouchDAO.pouchDetailData(Integer.parseInt(pouch_no));
		
		//List<PouchVO> pList = new ArrayList<PouchVO>();
		List<Integer> product_no_in_pouch_list = PouchDAO.product_in_pouch(mvo.getPouch_no());
		List<ProductVO> product_list = new ArrayList<ProductVO>();
		for (int pno : product_no_in_pouch_list) {
			ProductVO pvo = ProductDAO.productDetailData(pno);
			product_list.add(pvo);
		}
		request.setAttribute("product_list", product_list);
		
		
		// JSP����
		request.setAttribute("vo", vo);
	//	request.setAttribute("pList", pList);

		
		request.setAttribute("main_jsp", "../pouch/pouch_make.jsp");
		return "../main/main.jsp";
	}
		
		

		@RequestMapping("pouch/pouch_make_ok.hr")
		public String pouch_make_ok(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (Exception ex) {}

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		String pouch_no = request.getParameter("pouch_no");
		String pouch_intro = request.getParameter("pouch_intro");
		System.out.println("���̵�:"+id);
		System.out.println("�Ŀ�ġ��ȣ:"+pouch_no);
		System.out.println("�Ŀ�ġ�Ұ�:"+pouch_intro);
		MemberVO mvo = ProfileDAO.getMemberData(id);
		PouchVO vo = PouchDAO.pouchDetailData(Integer.parseInt(pouch_no));
		
		//pouch_content
		Map map = new HashMap();
		map.put("pouch_no",Integer.parseInt(pouch_no));
		map.put("pouch_content", pouch_intro);
		PouchDAO.pouchContentUpdate(map);
		
		//

		return "redirect:../pouch/pouch_detail.hr?pouch_no=" + pouch_no;
	}
}
