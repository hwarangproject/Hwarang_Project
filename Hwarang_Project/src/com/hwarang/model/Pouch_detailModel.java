package com.hwarang.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
			// JSP����
			request.setAttribute("vo", vo);
			request.setAttribute("pList", pList);
			request.setAttribute("main_jsp", "../pouch/pouch_detail.jsp");
		} catch (Exception e) {
			System.out.println("�Ŀ�ġ ������ ��"+e.getMessage());
		}

		return "../main/main.jsp";
	}

}
