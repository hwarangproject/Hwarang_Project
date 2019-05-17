package com.hwarang.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.hwarang.vo.*;



public class ProductDAO {
	private static SqlSessionFactory ssf;
	static
	{
		ssf=CreateSqlSessionFactory.getSsf();
	}
	
	// 메인 화면 //
	//////////////////////////// 슬라이더//////////////////////////////////
	public static List<ProductVO> productList_RandomData()
	{
		List<ProductVO> list=new ArrayList<ProductVO>();
		//연결: Sqlsession (Connection, PreparedStatement)
		SqlSession session=null;
		
		try
		{
			session=ssf.openSession(); //connection연결
			list=session.selectList("productList_RandomData");//목록 list에 저장, while(rs.next()) 역할
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			//DBCP: 사용후 반드시 반환
			if(session!=null)
				session.close();
		}
		
		return list;
	}
	////////////////////////////슬라이더//////////////////////////////////
	
	
	// 메인 화면 추천(파우치에 많이 담긴 화장품)
	public static List<ProductVO> recommend_ProductData() {
		List<ProductVO> list = new ArrayList<ProductVO>();
		SqlSession session = null;
		try {
			session = ssf.openSession();
			list = session.selectList("recommend_ProductData");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}

		return list;
	}
	
	// 찜수
	public static List<ProductVO> jjim_ProductData() {
		List<ProductVO> list = new ArrayList<ProductVO>();
		SqlSession session = null;
		try {
			session = ssf.openSession();
			list = session.selectList("jjim_ProductData");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}

		return list;
	}
	
	// 리뷰
	public static List<ProductVO> review_ProductData() {
		List<ProductVO> list = new ArrayList<ProductVO>();
		SqlSession session = null;
		try {
			session = ssf.openSession();
			list = session.selectList("review_ProductData");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}

		return list;
	}
	
	// 메인 화면 //
	
	//상품 디테일
	public static ProductVO productDetailData(int pno){
		ProductVO vo=new ProductVO();
		SqlSession session=null;
		try
		{
			session=ssf.openSession();
			vo=session.selectOne("productDetailData",pno);
		}catch(Exception ex){ex.printStackTrace();}
		finally
		{
			if(session!=null)
				session.close();
		}
		return vo;
	}
	
	// 상품 디테일 타입 가져오기
	public static DetailcateVO productDetailData_Type(int pno){
		DetailcateVO vo=new DetailcateVO();
	    SqlSession session=null;
	    try
	    {
		   session=ssf.openSession();
		   vo=session.selectOne("productDetailData_Type",pno);
	    }catch(Exception ex){ex.printStackTrace();}
	    finally
	    {
		   if(session!=null)
			   session.close();
	    }
	    return vo;
	}
	// 상품 연령별 합계
	public static int productDetailData_Sum(int pno){
		int sum=0;
		SqlSession session=null;
		try
	    {
		   session=ssf.openSession();
		   sum=session.selectOne("productDetailData_Sum",pno);
	    }catch(Exception ex){ex.printStackTrace();}
	    finally
	    {
		   if(session!=null)
			   session.close();
	    }
		
		return sum;
	}
	
	// 카테고리 리스트
	public static List<DetailcateVO> detail_cate_list() {
		List<DetailcateVO> list = new ArrayList<DetailcateVO>();
		SqlSession session=null;
		try {
			session = ssf.openSession();
			list = session.selectList("detail_cate_list");
		} 
		catch (Exception ex) {
			ex.printStackTrace();
		} 
		finally {
			if (session != null)
				session.close();
		}
		return list;
	}
	
	 // 상품 댓글 읽기
	   public static List<Product_replyVO> productReplyListData(int pno){
		   List<Product_replyVO> prlist = new ArrayList<Product_replyVO>();
		   SqlSession session = null;
		   
		   try{
			   session = ssf.openSession();
			   prlist = session.selectList("productReplyListData", pno);
			   
		   }catch(Exception ex){
			   ex.printStackTrace();
			   
		   }finally{
			   if(session != null){
				   session.close();
			   }
		   }
		   return prlist;
	   }
	   
    // 상품 댓글 생성
	public static void productReplyInsert(Product_replyVO prvo){

		SqlSession session=null;
		try {
			session = ssf.openSession();
			session.insert("productReplyInsert",prvo);
			session.update("productReplyCntIncrement",prvo.getProduct_no());
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
	// 상품 댓글 삭제
	public static void productReplyDelete(Product_replyVO prvo){

		SqlSession session=null;
		try {
			session = ssf.openSession();
			session.insert("productReplyDelete",prvo);
			session.update("productReplyCntDecrement",prvo.getProduct_no());
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
	// 상품 댓글 수정
	public static void productReplyUpdate(Product_replyVO prvo){

		SqlSession session=null;
		try {
			session = ssf.openSession(true);
			session.insert("productReplyUpdate",prvo);
		} 
		catch (Exception ex) {
			ex.printStackTrace();
		} 
		finally {
			if (session != null)
				session.close();
		}
	}
	
	////////////////////////////////// 연령별 ////////////////////////////////////////////
	// 10대가 좋아하는 순
	public static List<ProductVO> product_10_age() {
		List<ProductVO> list = new ArrayList<ProductVO>();
		SqlSession session = null;

		try {
			session = ssf.openSession();
			list = session.selectList("product_10_age");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}

		return list;
	}

	// 20대가 좋아하는 순
	public static List<ProductVO> product_20_age() {
		List<ProductVO> list = new ArrayList<ProductVO>();
		SqlSession session = null;

		try {
			session = ssf.openSession();
			list = session.selectList("product_20_age");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}

		return list;
	}

	// 30대가 좋아하는 순
	public static List<ProductVO> product_30_age() {
		List<ProductVO> list = new ArrayList<ProductVO>();
		SqlSession session = null;

		try {
			session = ssf.openSession();
			list = session.selectList("product_30_age");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}

		return list;
	}

	// 40대가 좋아하는 순
	public static List<ProductVO> product_40_age() {
		List<ProductVO> list = new ArrayList<ProductVO>();
		SqlSession session = null;

		try {
			session = ssf.openSession();
			list = session.selectList("product_40_age");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}

		return list;
	}

	// 50대가 좋아하는 순
	public static List<ProductVO> product_50_age() {
		List<ProductVO> list = new ArrayList<ProductVO>();
		SqlSession session = null;

		try {
			session = ssf.openSession();
			list = session.selectList("product_50_age");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}

		return list;
	}
	//////////////////////////////////////// 연령별 ////////////////////////////////////////////

	
	// 상품 페이지 나누기 (전체)
	public static List<ProductVO> productMainPage_Total(Map map) {
		List<ProductVO> list = new ArrayList<ProductVO>();
		SqlSession session=null;
		try {
			session = ssf.openSession();
			list = session.selectList("productMainPage_Total", map);
		} 
		catch (Exception ex) {
			System.out.println("productMainpage_Total:"+ex.getMessage());
			ex.printStackTrace();
		} 
		finally {
			if (session != null)
				session.close();
		}
		return list;
	}
		
	// 상품 페이지 나누기 (개별)
	public static List<ProductVO> productMainPage(Map map) {
		List<ProductVO> list = new ArrayList<ProductVO>();
		SqlSession session=null;
		try {
			session = ssf.openSession();
			list = session.selectList("productMainPage", map);
		} 
		catch (Exception ex) {
			ex.printStackTrace();
		} 
		finally {
			if (session != null)
				session.close();
		}
		return list;
	}
	
	// 상품 페이지 나누기 (전체)
	public static List<ProductVO> productScorePage_Total(Map map) {
		List<ProductVO> list = new ArrayList<ProductVO>();
		SqlSession session=null;
		try {
			session = ssf.openSession();
			list = session.selectList("productScorePage_Total", map);
		} 
		catch (Exception ex) {
			System.out.println("productScorePage_Total:"+ex.getMessage());
			ex.printStackTrace();
		} 
		finally {
			if (session != null)
				session.close();
		}
		return list;
	}
			
	// 상품 페이지 나누기 (개별)
	public static List<ProductVO> productScorePage(Map map) {
		List<ProductVO> list = new ArrayList<ProductVO>();
		SqlSession session=null;
		try {
			session = ssf.openSession();
			list = session.selectList("productScorePage", map);
		} 
		catch (Exception ex) {
			ex.printStackTrace();
		} 
		finally {
			if (session != null)
				session.close();
		}
		return list;
	}		
	// 상품 페이지 구하기
	public static int productTotalPage(Map map) {
		int total=0;
		SqlSession session=null;
		try {
			session = ssf.openSession();
			total = session.selectOne("productTotalPage", map);
		} 
		catch (Exception ex) {
			System.out.println("productTotalPage:"+ex.getMessage());
			ex.printStackTrace();
		} 
		finally {
			if (session != null)
				session.close();
		}
		return total;
	}
}
