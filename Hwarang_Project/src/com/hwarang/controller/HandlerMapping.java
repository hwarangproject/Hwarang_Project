package com.hwarang.controller;
import java.util.*;

import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import java.io.*;
public class HandlerMapping {
   List<String> clsList=new ArrayList<String>();
   public static void main(String[] args) {
	  HandlerMapping hm=new HandlerMapping("");
   }
   public HandlerMapping(String path)
   {
	   try
	   {
		   SAXParserFactory spf=
				   SAXParserFactory.newInstance();
		   // XML,HTML
		   //path="C:\\webDev\\webStudy2\\JSPFinalProject\\WebContent\\WEB-INF\\application.xml";
		   SAXParser sp=spf.newSAXParser();
		   XMLParser xp=new XMLParser();
		   sp.parse(new File(path), xp);
		   List<String> list=xp.list;
		   
		   for(String pack:list)
		   {
			   List<String> cls=FileScan.componentScan(pack);
			   for(String c:cls)
			   {
				   clsList.add(c);
			   }
		   }
		   
	   }catch(Exception ex){
		   System.out.println("handlerMapping:"+ex.getMessage());
	   }
   }
}






