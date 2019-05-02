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
	
	//product���
	public static List<ProductVO> productListData()
	{
		List<ProductVO> list=new ArrayList<ProductVO>();
		//����: Sqlsession (Connection, PreparedStatement)
		SqlSession session=null;
		
		try
		{
			session=ssf.openSession(); //connection����
			list=session.selectList("productListData");//��� list�� ����, while(rs.next()) ����
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			//DBCP: ����� �ݵ�� ��ȯ
			if(session!=null)
				session.close();
		}
		
		return list;
	}
	
	
	//��ǰ ������
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
