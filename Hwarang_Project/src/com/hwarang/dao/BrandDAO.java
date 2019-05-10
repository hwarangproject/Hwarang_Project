package com.hwarang.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.hwarang.vo.ProductVO;


public class BrandDAO {
	private static SqlSessionFactory ssf;
	   static
	   {
		   try
		   {
			   ssf=CreateSqlSessionFactory.getSsf();
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
	   }
	   
	   	// �귣�� ����Ʈ
		public static List<ProductVO> brandListData(HttpServletRequest request){
			List<ProductVO> list = new ArrayList<ProductVO>();
			try
			{
				request.setCharacterEncoding("UTF-8"); // ������ ���� => �ݵ�� ������ �� ����ó���� �ؾ���
			}catch(Exception ex){
				ex.printStackTrace();
			}
			SqlSession session=null;
			try {
				session = ssf.openSession();
				list = session.selectList("brandListData");
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
		
		// �귣�� �ʼ� �˻� ī�װ�
		public static List<ProductVO> brandListSearch(Map map){
			List<ProductVO> list = new ArrayList<ProductVO>();
			SqlSession session=null;
			
			try {
				session = ssf.openSession();
				list = session.selectList("brandListSearch", map);
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
		
		// �귣�� ���� ������
		public static List<ProductVO> brandMainPage(String brand){
			
			List<ProductVO> list = new ArrayList<ProductVO>();
			SqlSession session=null;
			
			try {
				session = ssf.openSession();
				list = session.selectList("brandMainPage", brand);
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
		
		// �귣�� ����Ʈ ���
		public static List<ProductVO> brandPageDivision(Map map)
		   {
			
			   List<ProductVO> list= new ArrayList<ProductVO>();
			   SqlSession session=null;
			   try
			   {
				   // Connection, PreparedStatement => Session���� ��ü ����
				   session=ssf.openSession();
				   list=session.selectList("brandPageDivision",map);
			   }catch (Exception e) {
				   e.printStackTrace();
			   }finally {
				   if(session!=null)
					   session.close();
			   }
			   return list;
		   }
		
		// �귣�� �� ������
		   public static int brandTotalPage(String brand)
		   {
			   int total=0;
			   SqlSession session=null;
			   try
			   {
				   // session ����
				   session=ssf.openSession();
				   total=session.selectOne("brandTotalPage", brand);
			   }catch (Exception e) {
				   e.printStackTrace();
			   }finally {
				   if(session!=null)
					   session.close();
			   }
			   return total;
		   }
		   
		   // �귣�� ����Ʈ������ * ������ ������
		   public static List<ProductVO> brandListPageDivision(Map map)
		   {
			
			   List<ProductVO> list= new ArrayList<ProductVO>();
			   SqlSession session=null;
			   try
			   {
				   // Connection, PreparedStatement => Session���� ��ü ����
				   session=ssf.openSession();
				   list=session.selectList("brandListPageDivision",map);
			   }catch (Exception e) {
				   e.printStackTrace();
			   }finally {
				   if(session!=null)
					   session.close();
			   }
			   return list;
		   }
		   
		// �귣�� ����Ʈ������ (��������)
		   public static int brandListTotalPage(Map map)
		   {
			   int total=0;
			   SqlSession session=null;
			   try
			   {
				   // session ����
				   session=ssf.openSession();
				   total=session.selectOne("brandListTotalPage", map);
			   }catch (Exception e) {
				   e.printStackTrace();
			   }finally {
				   if(session!=null)
					   session.close();
			   }
			   return total;
		   }
}
