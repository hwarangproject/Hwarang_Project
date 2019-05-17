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

	////////////////////////////////// 파우치
	////////////////////////////////// 부분//////////////////////////////////////////////////////////////////
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

	// 찾기
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

	// 검색된 결과 (몇개)
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

	 // 파우치 댓글 읽기
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
	   
 // 파우치 댓글 생성
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
	// 파우치 댓글 삭제
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
	// 파우치 댓글 수정
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
	
	// 파우치 좋아요
	
		public static void pouch_like_increment(int pouch_no) {

			// Connection얻기
			SqlSession session = null;
			try {
				// Connection,PreparedStatement
				session = ssf.openSession(true);
				session.update("pouch_like_increment", pouch_no);
			} catch (Exception ex) {
				// error처리

				ex.printStackTrace();
			} finally {
				// 반환
				if (session != null)
					session.close();
			}

		}
		//파우치 좋아요 취소 
		public static void pouch_like_descent(int pouch_no) {

			// Connection얻기
			SqlSession session = null;
			try {
				// Connection,PreparedStatement
				session = ssf.openSession(true);
				session.update("pouch_like_descent", pouch_no);
			} catch (Exception ex) {
				// error처리

				ex.printStackTrace();
			} finally {
				// 반환
				if (session != null)
					session.close();
			}

		}

	//////////////////////////////////메인 파우치
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
	  ///////////////////////////////////파우리detail 화장품 목록
	// 파우치에 들어있는 상품번호 불러오기
			public static List<Integer> product_in_pouch(int member_pouch_no) {
				List<Integer> list = new ArrayList<Integer>();
				// Connection얻기
				SqlSession session = null;
				try {
					// Connection,PreparedStatement
					session = ssf.openSession();
					list = session.selectList("product_in_pouch", member_pouch_no);
				} catch (Exception ex) {
					// error처리
					System.out.println("product_in_pouch:" + ex.getMessage());
					ex.printStackTrace();
				} finally {
					// 반환
					if (session != null)
						session.close();
				}
				return list;
			}

			// 파우치 회원 정보불러오기 member테이블에 pouch_no불러오는 메소드
			public static MemberVO getMember_pouch_no(int member_no) {
				MemberVO vo = new MemberVO();
				// Connection얻기
				SqlSession session = null;
				try {
					// Connection,PreparedStatement
					session = ssf.openSession();
					vo = session.selectOne("getMember_pouch_no", member_no);
				} catch (Exception ex) {
					// error처리
					System.out.println("product_in_pouch:" + ex.getMessage());
					ex.printStackTrace();
				} finally {
					// 반환
					if (session != null)
						session.close();
				}
				return vo;
			}
			
			
			//내파우치에 상품담기 add to pouch
			
			public static void add_to_mypouch(Map map) {

				// Connection얻기
				SqlSession session = null;
				try {
					// Connection,PreparedStatement
					session = ssf.openSession(true);
					session.insert("add_to_mypouch", map);
				} catch (Exception ex) {
					// error처리

					ex.printStackTrace();
				} finally {
					// 반환
					if (session != null)
						session.close();
				}
			}
			
			public static void pouch_jjim_count_add(int pno) {

				// Connection얻기
				SqlSession session = null;
				try {
					// Connection,PreparedStatement
					session = ssf.openSession(true);
					session.update("pouch_jjim_count_add", pno);
				} catch (Exception ex) {
					// error처리

					ex.printStackTrace();
				} finally {
					// 반환
					if (session != null)
						session.close();
				}
			}
	
	// 파우치 속 상품 제거 		
	public static void product_in_pouch_delete(Map map) {
		// Connection얻기
		SqlSession session = null;
		try {
			// Connection,PreparedStatement
			session = ssf.openSession(true);
			session.delete("product_in_pouch_delete", map);
		} catch (Exception ex) {
			// error처리

			ex.printStackTrace();
		} finally {
			// 반환
			if (session != null)
				session.close();
		}
	}
	// 파우치 속 상품 제거 시 상품테이블 찜 카운트 감소
	public static void pouch_jjim_cnt_update_Minus(int pno) {
		// Connection얻기
		SqlSession session = null;
		try {
			// Connection,PreparedStatement
			session = ssf.openSession(true);
			session.update("pouch_jjim_cnt_update_Minus", pno);
		} catch (Exception ex) {
			// error처리

			ex.printStackTrace();
		} finally {
			// 반환
			if (session != null)
				session.close();
		}
	}
	
	//파우치 컨텐트 수정 
	
	public static void pouchContentUpdate(Map map) {
		
		// Connection얻기
		SqlSession session = null;
		try {
			// Connection,PreparedStatement
			session = ssf.openSession(true);
	    	session.update("pouchContentUpdate", map);
		} catch (Exception ex) {
			// error처리
		
			ex.printStackTrace();
		} finally {
			// 반환
			if (session != null)
				session.close();
		}
		
	}
}
