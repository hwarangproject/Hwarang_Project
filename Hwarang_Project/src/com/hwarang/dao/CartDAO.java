package com.hwarang.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.hwarang.vo.ProductVO;
import com.hwarang.vo.CartVO;


public class CartDAO {
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
	   

	   
	   //찜 저장
	   public static void cartInsert(CartVO vo)
	   {
		   SqlSession session=null;
		   try
		   {
			   //session 생성 => getConnection()
			   session = ssf.openSession(true); // commit
			   session.insert("cartInsert",vo);
			   
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally{
			   if(session!=null)
				   session.close(); // 반환
		   }
	   }
	   
	   //찜삭제
	   public static void cartDelete(int cno)
	   {
		   SqlSession session=null;
		   try
		   {
			   //session 생성 => getConnection()
			   session = ssf.openSession(true); // commit
			   session.delete("cartDelete",cno);
			  
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally{
			   if(session!=null)
				   session.close(); // 반환
		   }
	   }
	 
	   //확인
	   public static int cartOkCount(CartVO vo)
	   {
		   SqlSession session=null;
		   int count=0;
		   try
		   {
			   //session 생성 => getConnection()
			   session = ssf.openSession(); // commit
			   count=session.selectOne("cartOk",vo);
			  
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally{
			   if(session!=null)
				   session.close(); // 반환
		   }
		   return count;
	   }
	    
	   //목록
	   public static List<CartVO> cartGetData(String id)
	   {
		   SqlSession session=null;
		   List<CartVO> list = new ArrayList<CartVO>();
		   
		   try
		   {
			   //session 생성 => getConnection()
			   session = ssf.openSession(); // commit
			   list=session.selectList("cartGetData",id);
			  
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally{
			   if(session!=null)
				   session.close(); // 반환
		   }
		   return list;
	   }
	
		
		
}
