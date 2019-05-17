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
	//��ǰ like insert
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
	
	// like��ǰ ����
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
	
	// ������ ��� ��������
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
			// ��� ������ ������
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
		
		// insertlikePouch_no �Ŀ�ġ ���ƿ䴭������ ���ã�� �Ŀ�ġ��Ͽ� ����(�߰�)
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
		// deletelikePouch_no �Ŀ�ġ ���ƿ� ������� �� ���̺���
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
		
		// ���ã�� ��ǰ ��������
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
					// ���ã�� ��ǰ ������ ������
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
					
					// �������� ����
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
