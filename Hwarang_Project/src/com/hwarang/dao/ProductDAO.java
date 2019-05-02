package com.hwarang.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.hwarang.vo.ProductVO;

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
	public static ProductVO productDetailData(int pno)
	   {
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
}
