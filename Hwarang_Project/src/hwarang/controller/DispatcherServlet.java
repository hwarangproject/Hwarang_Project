package hwarang.controller;

import java.io.*;
import java.lang.reflect.Method;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import javax.xml.parsers.*;
import org.w3c.dom.*;

public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<String> clsList=new ArrayList<String>();

	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		// 동작하는 과정을 이해
		try {
			String path=config.getInitParameter("xmlPath");
			DocumentBuilderFactory dbf=DocumentBuilderFactory.newInstance();
			DocumentBuilder db=dbf.newDocumentBuilder();
			
			Document doc=db.parse(new File(path));
			
			Element root=doc.getDocumentElement();
			
			NodeList list=root.getElementsByTagName("bean");
			for(int i=0;i<list.getLength();i++)
			{
				Element bean=(Element)list.item(i);
				String cls=bean.getAttribute("class");
				System.out.println(cls);
				clsList.add(cls);
			}
		}
		catch (Exception ex) {
			ex.printStackTrace();
		}
	}


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String cmd=request.getRequestURI();
			//http://localhost:8080/JSPMVCProject5/*.do
			// URI: /JSPMVCProject5/*.do ==> 마지막 /부터 문자열 자름
			cmd=cmd.substring(cmd.lastIndexOf("/")+1);
			
			for(String cls:clsList){
				// 메모리 할당
				Class clsName=Class.forName(cls);
				Object obj=clsName.newInstance();
				
				// import java.lang.reflect.Method;
				Method[] methods=clsName.getDeclaredMethods();
				for(Method m:methods){
					RequestMapping rm=m.getAnnotation(RequestMapping.class);
					
					if(rm.value().equals(cmd)){
						String jsp=(String)m.invoke(obj, request);
						RequestDispatcher rd=request.getRequestDispatcher(jsp);
						
						rd.forward(request, response);
						return;
					}
				}
			}
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
	}

}
