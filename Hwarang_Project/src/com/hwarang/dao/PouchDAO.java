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

	////////////////////////////////// 파우치 부분//////////////////////////////////////////////////////////////////
	// 목록
	public static List<PouchVO> pouchListData(Map map) {
		List<PouchVO> list = new ArrayList<PouchVO>();
		// Connection얻기
		SqlSession session = null;
		try {
			// Connection,PreparedStatement
			session = ssf.openSession();
			list = session.selectList("pouchListData", map);
		} catch (Exception ex) {
			// error처리
			ex.printStackTrace();
		} finally {
			// 반환
			if (session != null)
				session.close();
		}
		return list;
	}

	// 총페이지
	public static int pouchTotalPage() {
		int total = 0;
		SqlSession session = null;
		try {
			// session생성
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

	// 상세보기
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
	
	// 멤버 정보 가져오기
	public static MemberVO memberData(int mno){
		MemberVO vo=new MemberVO();
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
	//////////////////////////////////파우치 화장품 목록 부분/////////////////////////////////////////////////////
	/*// 목록
		public static List<ProductVO> productPouchListData(Map map) {
			List<ProductVO> list = new ArrayList<ProductVO>();
			// Connection얻기
			SqlSession session = null;
			try {
				// Connection,PreparedStatement
				session = ssf.openSession();
				list = session.selectList("productPouchListData", map);
			} catch (Exception ex) {
				// error처리
				ex.printStackTrace();
			} finally {
				// 반환
				if (session != null)
					session.close();
			}
			return list;
		}
		
	//페이지
		public static int productPouchTotalPage() {
			int total = 0;
			SqlSession session = null;
			try {
				// session생성
				session = ssf.openSession();
				total = session.selectOne("productPouchTotalPage");
			} catch (Exception ex) {
				ex.printStackTrace();
			} finally {
				if (session != null)
					session.close();
			}
			return total;
		}*/
	////////////////////////////////// 메인 파우치부분/////////////////////////////////////////////////////////////

	// 파우치 리스트 구하기
	public static List<PouchVO> mainPouchListData() {
		List<PouchVO> list = new ArrayList<PouchVO>();
		// Connection얻기
		SqlSession session = null;
		try {
			// Connection,PreparedStatement
			session = ssf.openSession();
			list = session.selectList("mainPouchListData");
		} catch (Exception ex) {
			// error처리
			System.out.println("mainPouchListData:" + ex.getMessage());
			ex.printStackTrace();
		} finally {
			// 반환
			if (session != null)
				session.close();
		}
		return list;
	}

}
