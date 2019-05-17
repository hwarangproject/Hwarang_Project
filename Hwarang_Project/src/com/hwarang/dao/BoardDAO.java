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

	// 목록
	public static List<BoardVO> boardListData(Map map) {
		List<BoardVO> list = new ArrayList<BoardVO>();
		// Connection얻기
		SqlSession session = null;
		try {
			// Connection,PreparedStatement
			session = ssf.openSession();
			list = session.selectList("boardListData", map);
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

	// 상세보기
	public static BoardVO boardDetailData(Map map) {
		BoardVO vo = new BoardVO();
		SqlSession session = null;

		try {
			// Connection 가지고 오기 SqlSession
			session = ssf.openSession();
			// 조회수 증가
			session.update("hitIncrement", map);
			// 저장한다
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

	// 수정 데이터 읽기
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

	// 총페이지
	public static int boardTotalPage() {
		int total = 0;
		SqlSession session = null;
		try {
			// session생성
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

	// 게시물 추가
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

	// 게시물 수정
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

	// 게시물 삭제
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

	// 찾기
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

	// 검색된 결과( 몇 개 인지)
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
	
	//댓글 올리기
	   public static void replyInsert(CommunityReplyVO vo)
	   {
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession(); //트랜잭션 프로그램(일괄처리)
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
	
	   // 댓글읽기
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
	   
	   //댓글 수정
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
	   
	// 댓글 삭제
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
