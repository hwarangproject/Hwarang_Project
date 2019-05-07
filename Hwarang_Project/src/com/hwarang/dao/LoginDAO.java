package com.hwarang.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.hwarang.vo.*;

public class LoginDAO {
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
	   
	   public static MemberVO memberLogin(String id,String pwd)
	   {
		   MemberVO vo=new MemberVO();
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession();
			   int count=session.selectOne("memberIdCount", id);
			   if(count==0)//ID�� ���� ����
			   {
				   vo.setMsg("NOID");
			   }
			   else //ID�� �����ϴ� ���� 
			   {
				   //��й�ȣ �˻� 
				   vo = session.selectOne("memberGetPwd",id);
				   if(pwd.equals(vo.getPw()))
				   {
					   vo.setMsg("OK");
				   }
				   else
				   {
					   vo.setMsg("NOPWD");
				   }
			   }
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally
		   {
			   if(session!=null)
				   session.close();
		   }
		   return vo;
	   }
}
