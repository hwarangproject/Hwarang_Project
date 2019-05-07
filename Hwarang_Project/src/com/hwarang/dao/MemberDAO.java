package com.hwarang.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.hwarang.dao.CreateSqlSessionFactory;
import com.hwarang.vo.MemberVO;

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
			    *  selectList ==> �ڵ� ����ȯ 
			    */
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally
		   {
			   if(session!=null)
				   session.close(); //DBCP ��ȯ => ���� 
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
}
