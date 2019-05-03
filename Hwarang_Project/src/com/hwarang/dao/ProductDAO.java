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
	
	// ��ǰ ����Ʈ ī�װ�
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
	
	// ī�װ� �׸� �ϳ� ���
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
	
	// ī�װ� ����Ʈ
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
