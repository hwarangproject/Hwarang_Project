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
		
	// �귣�� �ʼ� �˻� ī�װ���
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
}