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
	// 등록 날짜, 만료 날짜
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

	// product목록
	public static List<PouchVO> pouchListData() {
		List<PouchVO> list = new ArrayList<PouchVO>();
		// 연결: Sqlsession (Connection, PreparedStatement)
		SqlSession session = null;

		try {
			session = ssf.openSession(); // connection연결
			list = session.selectList("pouchListData");// 목록 list에 저장,
														// while(rs.next()) 역할
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			// DBCP: 사용후 반드시 반환
			if (session != null)
				session.close();
		}

		return list;
	}

	// 상품 디테일
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
