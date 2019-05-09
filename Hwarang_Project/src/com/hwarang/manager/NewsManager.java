package com.hwarang.manager;
/*
 * 	jaxb	===>	binding (�ڹ�Ŭ���� = �±׸�)
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
 *	Unmarshaller : XML�±� => Java Class ����
 *	Marshaller : Java Class => XML �±׷� ���� 
 */

public class NewsManager {
	public static List<Item> newsAllData(String fd){
		List<Item> list=new ArrayList<Item>();
		try{
			// ��Ʈ Ŭ������ �Ű������� �־��ش�
			JAXBContext jc=JAXBContext.newInstance(Rss.class);
			// encouding : �ѱ� => byte������ ��ȯ(������ => 1byte�� ����)
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
