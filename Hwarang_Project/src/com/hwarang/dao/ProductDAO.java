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
	
	// ���� ȭ�� //
	//////////////////////////// �����̴�//////////////////////////////////
	public static List<ProductVO> productList_RandomData()
	{
		List<ProductVO> list=new ArrayList<ProductVO>();
		//����: Sqlsession (Connection, PreparedStatement)
		SqlSession session=null;
		
		try
		{
			session=ssf.openSession(); //connection����
			list=session.selectList("productList_RandomData");//��� list�� ����, while(rs.next()) ����
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
	////////////////////////////�����̴�//////////////////////////////////
	
	
	// ���� ȭ�� ��õ(�Ŀ�ġ�� ���� ��� ȭ��ǰ)
	public static List<ProductVO> recommend_ProductData() {
		List<ProductVO> list = new ArrayList<ProductVO>();
		SqlSession session = null;
		try {
			session = ssf.openSession();
			list = session.selectList("recommend_ProductData");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}

		return list;
	}
	
	// ���
	public static List<ProductVO> jjim_ProductData() {
		List<ProductVO> list = new ArrayList<ProductVO>();
		SqlSession session = null;
		try {
			session = ssf.openSession();
			list = session.selectList("jjim_ProductData");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}

		return list;
	}
	
	// ����
	public static List<ProductVO> review_ProductData() {
		List<ProductVO> list = new ArrayList<ProductVO>();
		SqlSession session = null;
		try {
			session = ssf.openSession();
			list = session.selectList("review_ProductData");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}

		return list;
	}
	
	// ���� ȭ�� //
	
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
	
	// ��ǰ ������ Ÿ�� ��������
	public static DetailcateVO productDetailData_Type(int pno){
		DetailcateVO vo=new DetailcateVO();
	    SqlSession session=null;
	    try
	    {
		   session=ssf.openSession();
		   vo=session.selectOne("productDetailData_Type",pno);
	    }catch(Exception ex){ex.printStackTrace();}
	    finally
	    {
		   if(session!=null)
			   session.close();
	    }
	    return vo;
	}
	// ��ǰ ���ɺ� �հ�
	public static int productDetailData_Sum(int pno){
		int sum=0;
		SqlSession session=null;
		try
	    {
		   session=ssf.openSession();
		   sum=session.selectOne("productDetailData_Sum",pno);
	    }catch(Exception ex){ex.printStackTrace();}
	    finally
	    {
		   if(session!=null)
			   session.close();
	    }
		
		return sum;
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
	
	 // ��ǰ ��� �б�
	   public static List<Product_replyVO> productReplyListData(int pno){
		   List<Product_replyVO> prlist = new ArrayList<Product_replyVO>();
		   SqlSession session = null;
		   
		   try{
			   session = ssf.openSession();
			   prlist = session.selectList("productReplyListData", pno);
			   
		   }catch(Exception ex){
			   ex.printStackTrace();
			   
		   }finally{
			   if(session != null){
				   session.close();
			   }
		   }
		   return prlist;
	   }
	   
    // ��ǰ ��� ����
	public static void productReplyInsert(Product_replyVO prvo){

		SqlSession session=null;
		try {
			session = ssf.openSession();
			session.insert("productReplyInsert",prvo);
			session.update("productReplyCntIncrement",prvo.getProduct_no());
			session.commit();
		} 
		catch (Exception ex) {
			ex.printStackTrace();
		} 
		finally {
			if (session != null)
				session.close();
		}
	}
	// ��ǰ ��� ����
	public static void productReplyDelete(Product_replyVO prvo){

		SqlSession session=null;
		try {
			session = ssf.openSession();
			session.insert("productReplyDelete",prvo);
			session.update("productReplyCntDecrement",prvo.getProduct_no());
			session.commit();
		} 
		catch (Exception ex) {
			ex.printStackTrace();
		} 
		finally {
			if (session != null)
				session.close();
		}
	}
	// ��ǰ ��� ����
	public static void productReplyUpdate(Product_replyVO prvo){

		SqlSession session=null;
		try {
			session = ssf.openSession(true);
			session.insert("productReplyUpdate",prvo);
		} 
		catch (Exception ex) {
			ex.printStackTrace();
		} 
		finally {
			if (session != null)
				session.close();
		}
	}
	
	////////////////////////////////// ���ɺ� ////////////////////////////////////////////
	// 10�밡 �����ϴ� ��
	public static List<ProductVO> product_10_age() {
		List<ProductVO> list = new ArrayList<ProductVO>();
		SqlSession session = null;

		try {
			session = ssf.openSession();
			list = session.selectList("product_10_age");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}

		return list;
	}

	// 20�밡 �����ϴ� ��
	public static List<ProductVO> product_20_age() {
		List<ProductVO> list = new ArrayList<ProductVO>();
		SqlSession session = null;

		try {
			session = ssf.openSession();
			list = session.selectList("product_20_age");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}

		return list;
	}

	// 30�밡 �����ϴ� ��
	public static List<ProductVO> product_30_age() {
		List<ProductVO> list = new ArrayList<ProductVO>();
		SqlSession session = null;

		try {
			session = ssf.openSession();
			list = session.selectList("product_30_age");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}

		return list;
	}

	// 40�밡 �����ϴ� ��
	public static List<ProductVO> product_40_age() {
		List<ProductVO> list = new ArrayList<ProductVO>();
		SqlSession session = null;

		try {
			session = ssf.openSession();
			list = session.selectList("product_40_age");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}

		return list;
	}

	// 50�밡 �����ϴ� ��
	public static List<ProductVO> product_50_age() {
		List<ProductVO> list = new ArrayList<ProductVO>();
		SqlSession session = null;

		try {
			session = ssf.openSession();
			list = session.selectList("product_50_age");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}

		return list;
	}
	//////////////////////////////////////// ���ɺ� ////////////////////////////////////////////

	
	// ��ǰ ������ ������ (��ü)
	public static List<ProductVO> productMainPage_Total(Map map) {
		List<ProductVO> list = new ArrayList<ProductVO>();
		SqlSession session=null;
		try {
			session = ssf.openSession();
			list = session.selectList("productMainPage_Total", map);
		} 
		catch (Exception ex) {
			System.out.println("productMainpage_Total:"+ex.getMessage());
			ex.printStackTrace();
		} 
		finally {
			if (session != null)
				session.close();
		}
		return list;
	}
		
	// ��ǰ ������ ������ (����)
	public static List<ProductVO> productMainPage(Map map) {
		List<ProductVO> list = new ArrayList<ProductVO>();
		SqlSession session=null;
		try {
			session = ssf.openSession();
			list = session.selectList("productMainPage", map);
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
	
	// ��ǰ ������ ������ (��ü)
	public static List<ProductVO> productScorePage_Total(Map map) {
		List<ProductVO> list = new ArrayList<ProductVO>();
		SqlSession session=null;
		try {
			session = ssf.openSession();
			list = session.selectList("productScorePage_Total", map);
		} 
		catch (Exception ex) {
			System.out.println("productScorePage_Total:"+ex.getMessage());
			ex.printStackTrace();
		} 
		finally {
			if (session != null)
				session.close();
		}
		return list;
	}
			
	// ��ǰ ������ ������ (����)
	public static List<ProductVO> productScorePage(Map map) {
		List<ProductVO> list = new ArrayList<ProductVO>();
		SqlSession session=null;
		try {
			session = ssf.openSession();
			list = session.selectList("productScorePage", map);
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
	// ��ǰ ������ ���ϱ�
	public static int productTotalPage(Map map) {
		int total=0;
		SqlSession session=null;
		try {
			session = ssf.openSession();
			total = session.selectOne("productTotalPage", map);
		} 
		catch (Exception ex) {
			System.out.println("productTotalPage:"+ex.getMessage());
			ex.printStackTrace();
		} 
		finally {
			if (session != null)
				session.close();
		}
		return total;
	}
}
