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
	   

	   
	   //�� ����
	   public static void cartInsert(CartVO vo)
	   {
		   SqlSession session=null;
		   try
		   {
			   //session ���� => getConnection()
			   session = ssf.openSession(true); // commit
			   session.insert("cartInsert",vo);
			   
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally{
			   if(session!=null)
				   session.close(); // ��ȯ
		   }
	   }
	   
	   //�����
	   public static void cartDelete(int cno)
	   {
		   SqlSession session=null;
		   try
		   {
			   //session ���� => getConnection()
			   session = ssf.openSession(true); // commit
			   session.delete("cartDelete",cno);
			  
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally{
			   if(session!=null)
				   session.close(); // ��ȯ
		   }
	   }
	 
	   //Ȯ��
	   public static int cartOkCount(CartVO vo)
	   {
		   SqlSession session=null;
		   int count=0;
		   try
		   {
			   //session ���� => getConnection()
			   session = ssf.openSession(); // commit
			   count=session.selectOne("cartOk",vo);
			  
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally{
			   if(session!=null)
				   session.close(); // ��ȯ
		   }
		   return count;
	   }
	    
	   //���
	   public static List<CartVO> cartGetData(String id)
	   {
		   SqlSession session=null;
		   List<CartVO> list = new ArrayList<CartVO>();
		   
		   try
		   {
			   //session ���� => getConnection()
			   session = ssf.openSession(); // commit
			   list=session.selectList("cartGetData",id);
			  
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally{
			   if(session!=null)
				   session.close(); // ��ȯ
		   }
		   return list;
	   }
	
		
		
}
