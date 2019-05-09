package com.hwarang.manager;
/*
 * 	jaxb	===>	binding (자바클래스 = 태그명)
 *	<rss>							===> Class Rss
 *		<channel>					===> Class Channel
 *			<item>					===> Class Item { String title, String link }
 *				<title>aaa</title>
 *				<link>aa</link>
 *			</item>
 *
 *			<item>
 *				<title>aaa</title>
 *				<link>aa</link>
 *			</item>
 *		</channel>
 *	</rss>
 */
import java.util.*;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.Unmarshaller;
import java.net.*;

/*
 *	Unmarshaller : XML태그 => Java Class 변경
 *	Marshaller : Java Class => XML 태그로 변경 
 */

public class NewsManager {
	public static List<Item> newsAllData(String fd){
		List<Item> list=new ArrayList<Item>();
		try{
			// 루트 클래스를 매개변수로 넣어준다
			JAXBContext jc=JAXBContext.newInstance(Rss.class);
			// encouding : 한글 => byte형으로 변환(브라우저 => 1byte씩 읽음)
			URL url=new URL("http://newssearch.naver.com/search.naver?where=rss&query="+URLEncoder.encode(fd, "UTF-8"));
			Unmarshaller um=jc.createUnmarshaller();
			Rss rss=(Rss)um.unmarshal(url);
			
			list=rss.getChannel().getItem();
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
		
		return list;
	}
}
