package com.hwarang.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.hwarang.vo.*;

public class FindDAO {
	private static SqlSessionFactory ssf;
	static {
		try {
			ssf = CreateSqlSessionFactory.getSsf();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	// idcheck
	public static List<ProductVO> product_find1(String key) {
		List<ProductVO> list = new ArrayList<ProductVO>();

		SqlSession session = null;
		try {
			session = ssf.openSession();
			list = session.selectList("product_find1", key);
			/*
			 * selectOne selectList ==> 자동 형변환
			 */
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close(); // DBCP 반환 => 재사용
		}
		return list;
	}

	// 검색 상품 총 페이지 구하기
	public static int product_find_Page(String key) {
		int total = 0;
		SqlSession session = null;
		try {
			session = ssf.openSession();
			total = session.selectOne("product_find_Page", key);
		} catch (Exception ex) {
			System.out.println("product_find_Page:" + ex.getMessage());
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}
		return total;
	}

	// 검색 상품 정보 , 페이지
	public static List<ProductVO> product_find(String key) {
		List<ProductVO> list = new ArrayList<ProductVO>();
		SqlSession session = null;
		try {
			session = ssf.openSession();
			list = session.selectList("product_find", key);
		} catch (Exception ex) {
			System.out.println("product_find:" + ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return list;
	}
}
