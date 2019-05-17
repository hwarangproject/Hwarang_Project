package com.hwarang.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.hwarang.dao.CreateSqlSessionFactory;
import com.hwarang.vo.BoardVO;
import com.hwarang.vo.CommunityReplyVO;

public class BoardDAO {
	private static SqlSessionFactory ssf;
	static {
		ssf = CreateSqlSessionFactory.getSsf();
	}

	// ���
	public static List<BoardVO> boardListData(Map map) {
		List<BoardVO> list = new ArrayList<BoardVO>();
		// Connection���
		SqlSession session = null;
		try {
			// Connection,PreparedStatement
			session = ssf.openSession();
			list = session.selectList("boardListData", map);
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

	// �󼼺���
	public static BoardVO boardDetailData(Map map) {
		BoardVO vo = new BoardVO();
		SqlSession session = null;

		try {
			// Connection ������ ���� SqlSession
			session = ssf.openSession();
			// ��ȸ�� ����
			session.update("hitIncrement", map);
			// �����Ѵ�
			session.commit();
			vo = session.selectOne("boardDetailData", map);
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}
		return vo;
	}

	// ���� ������ �б�
	public static BoardVO boardUpdateData(Map map) {
		BoardVO vo = new BoardVO();
		SqlSession session = null;

		try {
			session = ssf.openSession();
			vo = session.selectOne("boardDetailData", map);
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}
		return vo;
	}

	// ��������
	public static int boardTotalPage() {
		int total = 0;
		SqlSession session = null;
		try {
			// session����
			session = ssf.openSession();
			total = session.selectOne("boardTotalPage");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}
		return total;
	}

	// �Խù� �߰�
	public static void boardInsert(BoardVO vo) {
		SqlSession session = null;
		try {
			session = ssf.openSession(true);
			session.insert("boardInsert", vo);
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}
	}

	// �Խù� ����
	public static void boardUpdate(BoardVO vo) {
		SqlSession session = null;
		try {
			session = ssf.openSession(true);
			session.update("boardUpdate", vo);
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}
	}

	// �Խù� ����
	public static void boardDelete(int b_no) {
		SqlSession session = null;
		try {
			session = ssf.openSession(true);
			session.delete("boardDelete", b_no);
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}
	}

	// ã��
	public static List<BoardVO> boardFindData(Map map) {
		List<BoardVO> list = new ArrayList<BoardVO>();
		SqlSession session = null;

		try {
			session = ssf.openSession();
			list = session.selectList("boardFindData",map);
		} catch (Exception ex) {
			ex.printStackTrace();

		} finally {
			if (session != null)
				session.close();
		}
		return list;
	}

	// �˻��� ���( �� �� ����)
	public static int boardFindCount(Map map) {
		int count = 0;
		SqlSession session = null;
		try {
			session = ssf.openSession();
			count = session.selectOne("boardFindCount",map);
		} catch (Exception ex) {
			ex.printStackTrace();

		} finally {
			if (session != null)
				session.close();
		}
		return count;
	}
	
	//��� �ø���
	   public static void replyInsert(CommunityReplyVO vo)
	   {
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession(); //Ʈ����� ���α׷�(�ϰ�ó��)
			   session.insert("replyInsert",vo);
			   session.commit();
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
	
	   // ����б�
	   public static List<CommunityReplyVO> replyListData(int b_no)
	   {
		   List<CommunityReplyVO> list=
				   new ArrayList<CommunityReplyVO>();
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession();
			   list=session.selectList("replyListData",b_no);
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally
		   {
			   if(session!=null)
				   session.close();
		   }
		   return list;
	   }
	   
	   //��� ����
	   public static void boardReplyUpdate(CommunityReplyVO vo)
	   {
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession(true);
			   session.update("boardReplyUpdate",vo);
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
	   
	// ��� ����
	   public static void boardReplyDelete(CommunityReplyVO vo)
	   {
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession(true);
			   session.delete("boardReplyDelete",vo);
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
