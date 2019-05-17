package com.hwarang.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hwarang.controller.RequestMapping;
import com.hwarang.dao.ProductDAO;
import com.hwarang.vo.DetailcateVO;
import com.hwarang.vo.ProductVO;

public class Rank_ScoreModel {
	@RequestMapping("ranking/rank_score.hr")
	public String rank_score_page(HttpServletRequest request,HttpServletResponse response) {
		String dcno=request.getParameter("dcno");
		String page = request.getParameter("page");
		List<ProductVO> product_list=new ArrayList<ProductVO>();
		
		Map map=new HashMap();
		
		if(dcno==null){
			String start=request.getParameter("start");
			String end=request.getParameter("end");
			
			if(start==null){
				start="1";
			}
			if(end==null) {
				end="27";
			}
			
			map.put("start",start);
			map.put("end",end);
			
			if (page == null)
				page = "1";
			int curpage = Integer.parseInt(page);

			
			int rowSize = 12;
			int start2 = (curpage * rowSize) - (rowSize - 1); // 1 , 11
			int end2 = curpage * rowSize;// 10,20
			
			map.put("start2", start2);
			map.put("end2", end2);
			
			product_list=ProductDAO.productScorePage_Total(map);
			int totalpage=ProductDAO.productTotalPage(map);
			
			// 페이지 출력 1~5, 6~10 => curpage(1~5) => startPage=1
			final int BLOCK=5;
			int startPage=((curpage-1)/BLOCK*BLOCK)+1;
			int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
			
			// 페이지수를 총페이지로 맞춤
			int allPage=totalpage;
			if(endPage>allPage){
				endPage=allPage;
			}
			
			request.setAttribute("start", start);
			request.setAttribute("end", end);
			
			// 블럭별 출력
			request.setAttribute("BLOCK", BLOCK);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			request.setAttribute("allPage", allPage);
			
			// 현재 페이지, 총페이지, list
			request.setAttribute("curpage", curpage);
			request.setAttribute("totalpage", totalpage);
//			request.setAttribute("productScorePage_Total", product_list);
			
		}
		else{
			if (page == null)
				page = "1";
			
			int curpage=Integer.parseInt(page);
			int rowSize=12;
			int start2=(curpage*rowSize)-(rowSize)+1; // 1, 13
			int end2=curpage*rowSize; // 12 24
			
			map.put("start2", start2);
			map.put("end2", end2);
			map.put("dcno", dcno);
			
			product_list=ProductDAO.productScorePage(map);
			int totalpage=ProductDAO.productTotalPage(map);
			
			final int BLOCK=5;
			int startPage=((curpage-1)/BLOCK*BLOCK)+1; 
			int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
			
			int allPage=totalpage;
			if(endPage>allPage)
				endPage=allPage;
			
			// 블럭별 출력
			request.setAttribute("dcno", dcno);
			request.setAttribute("BLOCK", BLOCK);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			request.setAttribute("allPage", allPage);
					
			// 현재 페이지, 총페이지, List
			request.setAttribute("curpage", curpage);
			request.setAttribute("totalpage", totalpage);		
//			request.setAttribute("productScorePage", product_list);
		}
		
		List<DetailcateVO> detail_cate_list=ProductDAO.detail_cate_list();
		request.setAttribute("product_list", product_list);
		request.setAttribute("detail_cate_list", detail_cate_list);
		request.setAttribute("main_jsp", "../ranking/rank_score.jsp");
		return "../main/main.jsp";
	}
}
