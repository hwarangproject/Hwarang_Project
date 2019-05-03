package com.hwarang.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.hwarang.vo.*;


public class ProductDAO {
	private static SqlSessionFactory ssf;
	static
	{
		ssf=CreateSqlSessionFactory.getSsf();
	}
	
	//product목록
	public static List<ProductVO> productListData()
	{
		List<ProductVO> list=new ArrayList<ProductVO>();
		//연결: Sqlsession (Connection, PreparedStatement)
		SqlSession session=null;
		
		try
		{
			session=ssf.openSession(); //connection연결
			list=session.selectList("productListData");//목록 list에 저장, while(rs.next()) 역할
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			//DBCP: 사용후 반드시 반환
			if(session!=null)
				session.close();
		}
		
		return list;
	}
	
	
	//상품 디테일
	public static ProductVO productDetailData(int pno){
		   ProductVO vo=new ProductVO();
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession();
			   vo=session.selectOne("productDetailData",pno);
		   }catch(Exception ex){ex.printStackTrace();}
		   finally
		   {
			   if(session!=null)
				   session.close();
		   }
		   return vo;
	}
	
	// 상품 리스트 카테고리
	public static List<ProductVO> product_category(Map map) {
		List<ProductVO> list = new ArrayList<ProductVO>();
		SqlSession session=null;
		try {
			session = ssf.openSession();
			list = session.selectList("product_category", map);
		} 
		catch (Exception ex) {
			ex.printStackTrace();
		} 
		finally {
			if (session != null)
				session.close();
		}
		return list;
	}
	
	// 카테고리 항목 하나 출력
	public static List<ProductVO> product_detail_category(int dcno) {
		List<ProductVO> list = new ArrayList<ProductVO>();
		SqlSession session=null;
		try {
			session = ssf.openSession();
			list = session.selectList("product_detail_category", dcno);
		} 
		catch (Exception ex) {
			System.out.println("product_detail_category:"+ex.getMessage());
		} 
		finally {
			if (session != null)
				session.close();
		}
		return list;
	}
	
	// 카테고리 리스트
	public static List<DetailcateVO> detail_cate_list() {
		List<DetailcateVO> list = new ArrayList<DetailcateVO>();
		SqlSession session=null;
		try {
			session = ssf.openSession();
			list = session.selectList("detail_cate_list");
		} 
		catch (Exception ex) {
			ex.printStackTrace();
		} 
		finally {
			if (session != null)
				session.close();
		}
		return list;
	}
}
