package com.hwarang.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.hwarang.vo.*;

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
	
	// �Ŀ�ġ ���ƿ�
	
		public static void pouch_like_increment(int pouch_no) {

			// Connection���
			SqlSession session = null;
			try {
				// Connection,PreparedStatement
				session = ssf.openSession(true);
				session.update("pouch_like_increment", pouch_no);
			} catch (Exception ex) {
				// erroró��

				ex.printStackTrace();
			} finally {
				// ��ȯ
				if (session != null)
					session.close();
			}

		}
		//�Ŀ�ġ ���ƿ� ��� 
		public static void pouch_like_descent(int pouch_no) {

			// Connection���
			SqlSession session = null;
			try {
				// Connection,PreparedStatement
				session = ssf.openSession(true);
				session.update("pouch_like_descent", pouch_no);
			} catch (Exception ex) {
				// erroró��

				ex.printStackTrace();
			} finally {
				// ��ȯ
				if (session != null)
					session.close();
			}

		}

	//////////////////////////////////���� �Ŀ�ġ
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
	  ///////////////////////////////////�Ŀ츮detail ȭ��ǰ ���
	// �Ŀ�ġ�� ����ִ� ��ǰ��ȣ �ҷ�����
			public static List<Integer> product_in_pouch(int member_pouch_no) {
				List<Integer> list = new ArrayList<Integer>();
				// Connection���
				SqlSession session = null;
				try {
					// Connection,PreparedStatement
					session = ssf.openSession();
					list = session.selectList("product_in_pouch", member_pouch_no);
				} catch (Exception ex) {
					// erroró��
					System.out.println("product_in_pouch:" + ex.getMessage());
					ex.printStackTrace();
				} finally {
					// ��ȯ
					if (session != null)
						session.close();
				}
				return list;
			}

			// �Ŀ�ġ ȸ�� �����ҷ����� member���̺� pouch_no�ҷ����� �޼ҵ�
			public static MemberVO getMember_pouch_no(int member_no) {
				MemberVO vo = new MemberVO();
				// Connection���
				SqlSession session = null;
				try {
					// Connection,PreparedStatement
					session = ssf.openSession();
					vo = session.selectOne("getMember_pouch_no", member_no);
				} catch (Exception ex) {
					// erroró��
					System.out.println("product_in_pouch:" + ex.getMessage());
					ex.printStackTrace();
				} finally {
					// ��ȯ
					if (session != null)
						session.close();
				}
				return vo;
			}
			
			
			//���Ŀ�ġ�� ��ǰ��� add to pouch
			
			public static void add_to_mypouch(Map map) {

				// Connection���
				SqlSession session = null;
				try {
					// Connection,PreparedStatement
					session = ssf.openSession(true);
					session.insert("add_to_mypouch", map);
				} catch (Exception ex) {
					// erroró��

					ex.printStackTrace();
				} finally {
					// ��ȯ
					if (session != null)
						session.close();
				}
			}
			
			public static void pouch_jjim_count_add(int pno) {

				// Connection���
				SqlSession session = null;
				try {
					// Connection,PreparedStatement
					session = ssf.openSession(true);
					session.update("pouch_jjim_count_add", pno);
				} catch (Exception ex) {
					// erroró��

					ex.printStackTrace();
				} finally {
					// ��ȯ
					if (session != null)
						session.close();
				}
			}
	
	// �Ŀ�ġ �� ��ǰ ���� 		
	public static void product_in_pouch_delete(Map map) {
		// Connection���
		SqlSession session = null;
		try {
			// Connection,PreparedStatement
			session = ssf.openSession(true);
			session.delete("product_in_pouch_delete", map);
		} catch (Exception ex) {
			// erroró��

			ex.printStackTrace();
		} finally {
			// ��ȯ
			if (session != null)
				session.close();
		}
	}
	// �Ŀ�ġ �� ��ǰ ���� �� ��ǰ���̺� �� ī��Ʈ ����
	public static void pouch_jjim_cnt_update_Minus(int pno) {
		// Connection���
		SqlSession session = null;
		try {
			// Connection,PreparedStatement
			session = ssf.openSession(true);
			session.update("pouch_jjim_cnt_update_Minus", pno);
		} catch (Exception ex) {
			// erroró��

			ex.printStackTrace();
		} finally {
			// ��ȯ
			if (session != null)
				session.close();
		}
	}
	
	//�Ŀ�ġ ����Ʈ ���� 
	
	public static void pouchContentUpdate(Map map) {
		
		// Connection���
		SqlSession session = null;
		try {
			// Connection,PreparedStatement
			session = ssf.openSession(true);
	    	session.update("pouchContentUpdate", map);
		} catch (Exception ex) {
			// erroró��
		
			ex.printStackTrace();
		} finally {
			// ��ȯ
			if (session != null)
				session.close();
		}
		
	}
}
