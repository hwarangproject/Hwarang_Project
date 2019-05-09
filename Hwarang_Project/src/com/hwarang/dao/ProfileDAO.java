package com.hwarang.dao;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import java.util.*;

import com.hwarang.vo.*;


public class ProfileDAO {
	private static SqlSessionFactory ssf;
	static
	{
		ssf=CreateSqlSessionFactory.getSsf();
	}
	
	public static MemberVO getMemberData(String id){
		MemberVO vo = new MemberVO();
		SqlSession session = null;
		try {
			session = ssf.openSession();
			vo = session.selectOne("getMemberData", id);
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}

		return vo;
	}
	
	public static String getBrandImg(String brand){
		String brandImg = null;
		SqlSession session = null;
		
		try {
			session = ssf.openSession();
			brandImg = session.selectOne("getBrandImg", brand);
			
		} catch (Exception ex) {
			ex.printStackTrace();
			
		} finally {
			if (session != null){
			    session.close();
			}
		}

		return brandImg;
	}
	
	// product_no ����Ʈ�� ����
	public static List<Integer> getLikeProduct_no(int mno){
		List<Integer> pnoList = new ArrayList<Integer>();
		SqlSession session = null;
		
		try {
			session = ssf.openSession();
			pnoList = session.selectList("getLikeProduct_no", mno);
			
		} catch (Exception ex) {
			ex.printStackTrace();
			
		} finally {
			if (session != null){
			    session.close();
			}
		}

		return pnoList;
	}
	
	// ����Ʈ�� ���� product_no �Ű������� ������ ProductVO �����´�
	public static ProductVO getLikeProductVO(int pno){
		ProductVO pvo = new ProductVO();
		SqlSession session = null;
		
		try {
			session = ssf.openSession();
			pvo = session.selectOne("getLikeProductVO", pno);
			
		} catch (Exception ex) {
			ex.printStackTrace();
			
		} finally {
			if (session != null){
			    session.close();
			}
		}

		return pvo;
	}
	
	// pouch_no ����Ʈ�� ����
	public static List<Integer> getLikePouch_no(int mno){
		List<Integer> ponoList = new ArrayList<Integer>();
		SqlSession session = null;
		
		try {
			session = ssf.openSession();
			ponoList = session.selectList("getLikePouch_no", mno);
			
		} catch (Exception ex) {
			ex.printStackTrace();
			
		} finally {
			if (session != null){
			    session.close();
			}
		}

		return ponoList;
	}
	
	// ����Ʈ�� ���� pouch_no �Ű������� ������ PouchVO �����´�
	public static PouchVO getLikePouchVO(int pono){
		PouchVO povo = new PouchVO();
		SqlSession session = null;
		
		try {
			session = ssf.openSession();
			povo = session.selectOne("getLikePouchVO", pono);
			
		} catch (Exception ex) {
			ex.printStackTrace();
			
		} finally {
			if (session != null){
			    session.close();
			}
		}

		return povo;
	}
	
	// �Ŀ�ġ ���  vo ��������
	public static MemberVO getPouchMemberData(int mno){
		MemberVO vo = new MemberVO();
		SqlSession session = null;
		try {
			session = ssf.openSession();
			vo = session.selectOne("getMemberData", mno);
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}

		return vo;
	}
	
}
