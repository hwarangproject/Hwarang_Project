package com.hwarang.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.hwarang.vo.*;
public class FindDAO {
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
	   
	// idcheck
	   public static List<ProductVO> product_find(String key)
	   {
	       List<ProductVO> list = new ArrayList<ProductVO>();
		
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession();
			   list=session.selectList("product_find", key);
			   /*
			    *  selectOne
			    *  selectList ==> 자동 형변환 
			    */
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally
		   {
			   if(session!=null)
				   session.close(); //DBCP 반환 => 재사용 
		   }
		   return list;
	   }
}
