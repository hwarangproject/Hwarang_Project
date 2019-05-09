package com.hwarang.manager;
import java.util.*;
import java.net.*;
import javax.xml.parsers.*;// XML : Spring,Mybatis,React,Vue
import org.w3c.dom.*;
/*
 *   JAXB (binding: xml=자바클래스)
 *   JAXP
 *   ====
 *    SAX => Spring,Mybatis : 읽기 전용
 *    DOM => 메모리 저장후에 처리 (속도가 늦다)
 *           =========
 *            추가,수정,삭제
 */

import com.hwarang.vo.NewsVO;
public class NaverNewsManager {
	/*public static void main(String[] args) {
		newsAllData("해외축구");
	}*/
   public static List<NewsVO> newsAllData(String data)
   {
	   List<NewsVO> list=new ArrayList<NewsVO>();
	   try
	   {
		   // 파서기 얻기 
		   DocumentBuilderFactory dbf=
				   DocumentBuilderFactory.newInstance();
		   // 파서기
		   DocumentBuilder db=dbf.newDocumentBuilder();
		   String url="http://newssearch.naver.com/search.naver?where=rss&query="
				     +URLEncoder.encode(data, "UTF-8");
		   Document doc=db.parse(url);
		   //System.out.println(doc);
		   // root
		   Element root=doc.getDocumentElement();
//		   System.out.println(root.getTagName());
		   Element channel=(Element)root.getElementsByTagName("channel").item(0);
//		   System.out.println(channel.getTagName());
		   
		   //item태그를 묶어서 처리
		   NodeList item=channel.getElementsByTagName("item");
//		   System.out.println("갯수:"+item.getLength());
		   /*
		    *   <item>
		    *     <title>aaaa</title>
		    *     <title>bbbbb</title>
		    *   </item>
		    */
		   for(int i=0;i<item.getLength();i++)
		   {
			   item=channel.getElementsByTagName("title");
			   String title=item.item(i+3).getFirstChild().getNodeValue();
//			   System.out.println(title);
			   
			   item=channel.getElementsByTagName("link");
			   String link=item.item(i+3).getFirstChild().getNodeValue();
//			   System.out.println(link);
			   
			   item=channel.getElementsByTagName("description");
			   String description=item.item(i+3).getFirstChild().getNodeValue();
//			   System.out.println(description);
			   
			   item=channel.getElementsByTagName("author");
			   String author=item.item(i).getFirstChild().getNodeValue();
//			   System.out.println(author);
			   
			   item=channel.getElementsByTagName("media:thumbnail");
			   Element elem=(Element)item.item(i);
			   String poster=elem.getAttribute("url");
//			   System.out.println(poster);
			   
			   NewsVO vo=new NewsVO();
			   vo.setAuthor(author);
			   vo.setLink(link);
			   vo.setDescription(description);
			   vo.setUrl(poster);
			   vo.setTitle(title);
			   list.add(vo);
		   }
	   }catch(Exception ex){}
	   return list;
   }
}








