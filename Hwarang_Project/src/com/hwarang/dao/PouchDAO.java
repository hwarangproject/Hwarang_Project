package com.hwarang.dao;

import java.util.ArrayList;
import java.util.List;

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

	// product���
	public static List<PouchVO> pouchListData() {
		List<PouchVO> list = new ArrayList<PouchVO>();
		// ����: Sqlsession (Connection, PreparedStatement)
		SqlSession session = null;

		try {
			session = ssf.openSession(); // connection����
			list = session.selectList("pouchListData");// ��� list�� ����,
														// while(rs.next()) ����
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			// DBCP: ����� �ݵ�� ��ȯ
			if (session != null)
				session.close();
		}

		return list;
	}

	// ��ǰ ������
	public static PouchVO pouchDetailData(int pno) {
		PouchVO vo = new PouchVO();
		SqlSession session = null;
		try {
			session = ssf.openSession();
			vo = session.selectOne("pouchDetailData", pno);
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}

		return vo;
	}
}
