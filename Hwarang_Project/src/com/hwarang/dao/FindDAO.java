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
			 * selectOne selectList ==> �ڵ� ����ȯ
			 */
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close(); // DBCP ��ȯ => ����
		}
		return list;
	}

	// �˻� ��ǰ �� ������ ���ϱ�
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

	// �˻� ��ǰ ���� , ������
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
