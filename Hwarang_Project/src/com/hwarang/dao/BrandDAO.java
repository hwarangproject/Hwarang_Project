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
	   
	   	// 브랜드 리스트
		public static List<ProductVO> brandListData(HttpServletRequest request){
			List<ProductVO> list = new ArrayList<ProductVO>();
			try
			{
				request.setCharacterEncoding("UTF-8"); // 컴파일 예외 => 반드시 컴파일 전 예외처리를 해야함
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
		
		// 브랜드 초성 검색 카테고리
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
		
		// 브랜드 개별 페이지
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
		
		// 브랜드 리스트 출력
		public static List<ProductVO> brandPageDivision(Map map)
		   {
			
			   List<ProductVO> list= new ArrayList<ProductVO>();
			   SqlSession session=null;
			   try
			   {
				   // Connection, PreparedStatement => Session으로 대체 가능
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
		
		// 브랜드 총 페이지
		   public static int brandTotalPage(String brand)
		   {
			   int total=0;
			   SqlSession session=null;
			   try
			   {
				   // session 생성
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
		   
		   // 브랜드 리스트페이지 * 페이지 나누기
		   public static List<ProductVO> brandListPageDivision(Map map)
		   {
			
			   List<ProductVO> list= new ArrayList<ProductVO>();
			   SqlSession session=null;
			   try
			   {
				   // Connection, PreparedStatement => Session으로 대체 가능
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
		   
		// 브랜드 리스트페이지 (총페이지)
		   public static int brandListTotalPage(Map map)
		   {
			   int total=0;
			   SqlSession session=null;
			   try
			   {
				   // session 생성
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
