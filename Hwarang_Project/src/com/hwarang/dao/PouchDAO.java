package com.hwarang.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.hwarang.vo.PouchVO;

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
	//////////////////////////////////�Ŀ�ġ �κ� //////////////////////////////////////////////////////////////////
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
	//////////////////////////////////���� �Ŀ�ġ �κ�/////////////////////////////////////////////////////////////
	
	// �Ŀ�ġ ����Ʈ ���ϱ�
	public static List<PouchVO> mainPouchListData() {
		List<PouchVO> list = new ArrayList<PouchVO>();
		// Connection���
		SqlSession session = null;
		try {
			// Connection,PreparedStatement
			session = ssf.openSession();
			list = session.selectList("mainPouchListData");
		} 
		catch (Exception ex) {
			// erroró��
			System.out.println("mainPouchListData:"+ex.getMessage());
			ex.printStackTrace();
		} 
		finally {
			// ��ȯ
			if (session != null)
				session.close();
		}
		return list;
	}
	
}
