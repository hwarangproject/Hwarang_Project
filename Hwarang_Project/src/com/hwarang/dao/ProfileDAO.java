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
	
	// @@@@@@@ my activity @@@@@@@@
	public static List<ProductVO> myProductReplyInfo(int mno){
		List<ProductVO> list = new ArrayList<ProductVO>();
		SqlSession session = null;
		
		try {
			session = ssf.openSession();
			list = session.selectList("myProductReplyInfo", mno);
			
		} catch (Exception ex) {
			ex.printStackTrace();
			
		} finally {
			if (session != null){
			    session.close();
			}
		}
		return list;
	}
	public static List<Product_replyVO> myReplyInfo(int mno){
		List<Product_replyVO> list = new ArrayList<Product_replyVO>();
		SqlSession session = null;
		
		try {
			session = ssf.openSession();
			list = session.selectList("myReplyInfo", mno);
			
		} catch (Exception ex) {
			ex.printStackTrace();
			
		} finally {
			if (session != null){
			    session.close();
			}
		}
		return list;
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
	
	// product_no 리스트로 받음
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
	// 리스트로 받은 product_no 매개변수로 각각의 ProductVO 가져온다
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
	//상품 like insert
	public static void insertLikeProductVO(Map map){
	
		SqlSession session = null;
		try {
			session = ssf.openSession(true);
			session.insert("insertLikeProductVO", map);
			
		} catch (Exception ex) {
			ex.printStackTrace();
			
		} finally {
			if (session != null){
			    session.close();
			}
		}

	}
	
	// like상품 삭제
	public static void deleteLikeProduct(Product_jjimVO vo){
		SqlSession session = null;
		   
		   try{
			   session = ssf.openSession(true); 
			   session.delete("deleteLikeProduct",vo);
			   
		   }catch(Exception ex){
			   ex.printStackTrace();
			   
		   }finally{
			   if(session != null){
				   session.close();
			   }
		   }
	}
	
	// pouch_no 리스트로 받음
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
	
	// 리스트로 받은 pouch_no 매개변수로 각각의 PouchVO 가져온다
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
	
	// 파우치 멤버  vo 가져오기
	public static MemberVO getLikePouchMemberVO(int pno){
		MemberVO mvo = new MemberVO();
		SqlSession session = null;
		try {
			session = ssf.openSession();
			mvo = session.selectOne("getLikePouchMemberVO", pno);
			
		} catch (Exception ex) {
			ex.printStackTrace();
			
		} finally {
			if (session != null)
				session.close();
		}

		return mvo;
	}
	
	// 내가쓴 댓글 총페이지
			public static int prodReplyTotalPage(int mno){
				int total = 0;
				SqlSession session = null;
				
				try {
					session = ssf.openSession();
					total = session.selectOne("prodReplyTotalPage",mno);
					
				} catch (Exception ex) {
					ex.printStackTrace();
					
				} finally {
					if (session != null){
					    session.close();
					}
				}
				return total;
			}
			// 댓글 페이지 나누기
			public static List<Product_replyVO> prodReplyPageDivision(Map map){
				List<Product_replyVO> prList = new ArrayList<Product_replyVO>();
				
				SqlSession session = null;
				try {
					session = ssf.openSession();
					prList = session.selectList("prodReplyPageDivision", map);
					
				} catch (Exception ex) {
					ex.printStackTrace();
					
				} finally {
					if (session != null){
					    session.close();
					}
				}
				return prList;
			}
		
		// insertlikePouch_no 파우치 좋아요눌렀을때 즐겨찾기 파우치목록에 갱신(추가)
		public static void insertlikePouch_no(Map map){
		
			SqlSession session = null;
			try {
				session = ssf.openSession(true);
				session.insert("insertlikePouch_no", map);
				
			} catch (Exception ex) {
				ex.printStackTrace();
				
			} finally {
				if (session != null)
					session.close();
			}

			
		}
		// deletelikePouch_no 파우치 좋아요 취소했을 때 테이블갱신
		public static void deletelikePouch_no(Map map){
			
			SqlSession session = null;
			try {
				session = ssf.openSession(true);
				session.delete("deletelikePouch_no", map);
				
			} catch (Exception ex) {
				ex.printStackTrace();
				
			} finally {
				if (session != null)
					session.close();
			}

			
		}
		
		// 즐겨찾기 상품 총페이지
					public static int likeProdTotalPage(int mno){
						int total = 0;
						SqlSession session = null;
						
						try {
							session = ssf.openSession();
							total = session.selectOne("likeProdTotalPage",mno);
							
						} catch (Exception ex) {
							ex.printStackTrace();
							
						} finally {
							if (session != null){
							    session.close();
							}
						}
						return total;
					}
					// 즐겨찾기 상품 페이지 나누기
					public static List<ProductVO> likeProdPageDivision(Map map){
						List<ProductVO> prList = new ArrayList<ProductVO>();
						
						SqlSession session = null;
						try {
							session = ssf.openSession();
							prList = session.selectList("likeProdPageDivision", map);
							
						} catch (Exception ex) {
							ex.printStackTrace();
							
						} finally {
							if (session != null){
							    session.close();
							}
						}
						return prList;
					}
					
					// 개인정보 수정
					public static void updateProfileInfo(MemberVO vo){
						
						SqlSession session = null;
						try {
							session = ssf.openSession(true);
							session.update("updateProfileInfo", vo);
							
						} catch (Exception ex) {
							ex.printStackTrace();
							
						} finally {
							if (session != null){
							    session.close();
							}
						}
					}
	
}
