package com.hwarang.controller;
import java.io.*;
import java.util.*;
public class FileScan {
/*   public static void main(String[] args) {
	  componentScan("com.sist.model");
   }*/
   public static List<String> componentScan(String pack)
   {
	   List<String> list=new ArrayList<String>();
	   try
	   {
		   String path="C:\\Hwarang\\git\\Hwarang_Project\\Hwarang_Project\\src\\";
		   // C:\\webDev\\webStudy2\\JSPFinalProject\\src\\ + com\\sist\\model
		   path=path+pack.replace(".", "\\");
		   File dir=new File(path);
		   File[] files=dir.listFiles();
		   for(File f:files)
		   {
			   //System.out.println(f.getName());
			   // FoodModel.java, MainModel.java  == > java·Î ÀÚ¸§
			   String name=f.getName();
			   String ext=name.substring(name.lastIndexOf(".")+1);
			   if(ext.equals("java")){
				   String s=pack+"."+name.substring(0,name.lastIndexOf("."));
				   list.add(s);
			   }
		   }
	   }catch(Exception ex){
		   System.out.println("componentScan:"+ex.getMessage());
	   }
	   return list;
   }
}
