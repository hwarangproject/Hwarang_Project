package com.hwarang.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.hwarang.dao.CreateSqlSessionFactory;
import com.hwarang.vo.MemberVO;
import com.hwarang.vo.PouchVO;
import com.hwarang.vo.ProductVO;

public class MemberDAO {
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
	   public static int idcheck(String id)
	   {
		   int count=0;
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession();
			   count=session.selectOne("idcheck", id);
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
		   return count;
	   }
	   
	   
	   public static void memberInsert(MemberVO vo)
	   {
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession(true);//commit
			   session.insert("memberInsert",vo);
			   
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally
		   {
			   if(session!=null)
				   session.close();
		   }
	   }
	   
	   // 멤버생성시 파우치 생성
	   public static void pouchInsert(PouchVO vo)
	   {
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession(true);//commit
			   session.insert("pouchInsert",vo);
			   
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally
		   {
			   if(session!=null)
				   session.close();
		   }
	   }
	   
	   public static List<ProductVO> brand_name(){
		   List<ProductVO> brand_name=new ArrayList<ProductVO>();
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession();
			   brand_name=session.selectList("brand_name");
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
				   session.close();
		   }
		   return brand_name;
	   }

}
