package com.hwarang.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.hwarang.vo.*;

/*
	private int pouch_no;
	private String product_name;
	private int pouch_score;
	private String product_img;
	private int pouch_like;
	// ��� ��¥, ���� ��¥
	private Date regdate;
	private Date expdate;
	private int pouch_reply_no;
	private String pouch_reply;
	private int member_no;
*/
public class PouchDAO {
	private static SqlSessionFactory ssf;
	static {
		ssf = CreateSqlSessionFactory.getSsf();
	}

	////////////////////////////////// �Ŀ�ġ
	////////////////////////////////// �κ�//////////////////////////////////////////////////////////////////
	// ���
	public static List<PouchVO> pouchListData(Map map) {
		List<PouchVO> list = new ArrayList<PouchVO>();
		// Connection���
		SqlSession session = null;
		try {
			// Connection,PreparedStatement
			session = ssf.openSession();
			list = session.selectList("pouchListData", map);
		} catch (Exception ex) {
			// erroró��
			ex.printStackTrace();
		} finally {
			// ��ȯ
			if (session != null)
				session.close();
		}
		return list;
	}

	// ��������
	public static int pouchTotalPage() {
		int total = 0;
		SqlSession session = null;
		try {
			// session����
			session = ssf.openSession();
			total = session.selectOne("pouchTotalPage");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}
		return total;
	}

	// �󼼺���
	public static PouchVO pouchDetailData(int pouch_no) {
		PouchVO vo = new PouchVO();
		SqlSession session = null;

		try {
			// Connection
			session = ssf.openSession();
			vo = session.selectOne("pouchDetailData", pouch_no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}

		return vo;
	}

	// ��� ���� ��������
	public static MemberVO memberData(int mno) {
		MemberVO vo = new MemberVO();
		SqlSession session = null;
		try {
			// Connection
			session = ssf.openSession();
			vo = session.selectOne("memberData", mno);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}
		return vo;
	}

	// ã��
	public static List<PouchVO> pouchFindData(Map map) {
		List<PouchVO> list = new ArrayList<PouchVO>();
		SqlSession session = null;
		try {
			session = ssf.openSession();
			list = session.selectList("pouchFindData", map);
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}
		return list;
	}

	// �˻��� ��� (�)
	public static int pouchFindCount(Map map) {
		int count = 0;
		SqlSession session = null;
		try {
			session = ssf.openSession();
			count = session.selectOne("pouchFindCount", map);
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}
		return count;
	}

	 // �Ŀ�ġ ��� �б�
	   public static List<Pouch_ReplyVO> pouchReplyListData(int pno){
		   List<Pouch_ReplyVO> prlist = new ArrayList<Pouch_ReplyVO>();
		   SqlSession session = null;
		   
		   try{
			   session = ssf.openSession();
			   prlist = session.selectList("pouchReplyListData", pno);
			   
		   }catch(Exception ex){
			   ex.printStackTrace();
			   
		   }finally{
			   if(session != null){
				   session.close();
			   }
		   }
		   return prlist;
	   }
	   
 // �Ŀ�ġ ��� ����
	public static void pouchReplyInsert(Pouch_ReplyVO prvo){

		SqlSession session=null;
		try {
			session = ssf.openSession();
			session.insert("pouchReplyInsert",prvo);
			session.update("pouchReplyCntIncrement",prvo.getPouch_no());
			session.commit();
		} 
		catch (Exception ex) {
			ex.printStackTrace();
		} 
		finally {
			if (session != null)
				session.close();
		}
	}
	// �Ŀ�ġ ��� ����
	public static void pouchReplyDelete(Pouch_ReplyVO prvo){

		SqlSession session=null;
		try {
			session = ssf.openSession();
			session.insert("pouchReplyDelete",prvo);
			session.update("pouchReplyCntDecrement",prvo.getPouch_no());
			session.commit();
		} 
		catch (Exception ex) {
			ex.printStackTrace();
		} 
		finally {
			if (session != null)
				session.close();
		}
	}
	// �Ŀ�ġ ��� ����
	public static void pouchReplyUpdate(Pouch_ReplyVO prvo){

		SqlSession session=null;
		try {
			session = ssf.openSession(true);
			session.insert("pouchReplyUpdate",prvo);
		} 
		catch (Exception ex) {
			ex.printStackTrace();
		} 
		finally {
			if (session != null)
				session.close();
		}
	}

	// �Ŀ�ġ ����Ʈ ���ϱ�
	   public static List<PouchVO> mainPouchListData() {
	      List<PouchVO> list = new ArrayList<PouchVO>();
	      // Connection���
	      SqlSession session = null;
	      try {
	         // Connection,PreparedStatement
	         session = ssf.openSession();
	         list = session.selectList("mainPouchListData");
	      } catch (Exception ex) {
	         // erroró��
	         System.out.println("mainPouchListData:" + ex.getMessage());
	         ex.printStackTrace();
	      } finally {
	         // ��ȯ
	         if (session != null)
	            session.close();
	      }
	      return list;
	   }
}
