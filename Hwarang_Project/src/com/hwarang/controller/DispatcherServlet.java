package com.hwarang.controller;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;


public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<String> clsList=new ArrayList<String>();

	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		String path=config.getInitParameter("xmlPath");
		// ��Ű������ ������
		HandlerMapping hm=new HandlerMapping(path);
		clsList=hm.clsList;
	}


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			/*
			 *	http://localhost:8080 + /JSPFinalProject/main/main.jsp
			 *	URI:/JSPFinalProject/main/main.jsp
			 *	getContextPath() : /JSPFinalProject
			 *	cmd = main/main.jsp
			 */
			String cmd=request.getRequestURI();
			cmd=cmd.substring(request.getContextPath().length()+1);
			
			
			// clsList ==> com.sist.model.FoodModel, com.sist.model.MainModel
			// com.sist.model �� �ִ� Ŭ��������� List �� �� ����
			for(String clsName:clsList){
				Class cls=Class.forName(clsName);
				Object obj=cls.newInstance();
				//com.sist.model�� �ִ� Ŭ������ �޼ҵ带 ������
				Method[] methods=cls.getDeclaredMethods();
				for(Method m:methods){
					RequestMapping rm=m.getAnnotation(RequestMapping.class);
					if(cmd.equals(rm.value())){
						// �ش�Ǵ� �Լ��� ȣ��(�޼ҵ���� �ʿ����)
						/*
						 * ?name=aaa&sex=m&age=30
						 * Enumeration e=request.getParameterNames();
						 * 
						 * name => setName()
						 * sex => setSex()
						 * age => setAge()
						 */
						
						// return "redirect:list.do"
						// return "main/main.jsp"
						// 2���� ���
						String jsp=(String)m.invoke(obj, request, response);
						if(jsp.startsWith("redirect")){
							jsp=jsp.substring(jsp.indexOf(":")+1);
							response.sendRedirect(jsp);
						}
						else {
							RequestDispatcher rd=request.getRequestDispatcher(jsp);
							rd.forward(request, response);
						}
						return;
					}
				}
			}
		}
		catch(Exception ex){
			System.out.println("service:"+ex.getMessage());
			ex.printStackTrace();
		}
	}

}
